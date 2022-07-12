import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:clean_tdd/app_setting.dart';
import 'package:clean_tdd/navigator/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import 'features/data/data_sources/remote_data_sources/api.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ApiConfig.getInstance.apiKey = "2d41b93eda728a4c3c492bcb117ec0ed";
  runApp(const MyApp());
  _setUp();
  _fireBase();
  _awesomeNotification();
}

void _awesomeNotification() {
  AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(
        channelGroupKey: 'basic_channel_group',
        channelKey: 'basic_channel',
        channelName: 'Basic notifications',
        channelDescription: 'Notification channel for basic tests',
        defaultColor: const Color(0xFF9D50DD),
        ledColor: Colors.white,
        enableVibration: true,
        playSound: true,
        importance: NotificationImportance.Max,
        defaultPrivacy: NotificationPrivacy.Public,
      ),
    ],
  );

  AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
    if (!isAllowed) {
      // This is just a basic example. For real apps, you must show some
      // friendly dialog box before call the request method.
      // This is very important to not harm the user experience
      AwesomeNotifications().requestPermissionToSendNotifications();
    }
  });

  AwesomeNotifications()
      .actionStream
      .listen((ReceivedNotification receivedNotification) {
    Logger().i("============== ${receivedNotification.title}");
  });
}

void _setUp() {
  GetIt.I.registerSingleton<AppSetting>(AppSetting());
}

void _fireBase() async {
  await Firebase.initializeApp();
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  messaging.getToken().then((value) => Logger().i(value));
  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );
  FirebaseMessaging.onMessage.listen((event) {
    Logger().i(event.notification?.title);
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 10,
        channelKey: 'basic_channel',
        title: event.notification?.title,
        body: event.notification?.body,
      ),
    );
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.appRoutes,
    );
  }
}
