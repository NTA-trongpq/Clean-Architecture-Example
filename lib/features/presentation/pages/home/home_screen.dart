import 'package:clean_tdd/app_setting.dart';
import 'package:clean_tdd/navigator/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clean architecture & TDD"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final setting = GetIt.I.get<AppSetting>();
          setting.setColor();
          setting.setMusic();
        },
        child: const Icon(Icons.transform),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              _Button(
                text: "Go to Cinema",
                targetScreen: AppRoutes.cinema,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  final String targetScreen;
  final String text;

  const _Button({Key? key, required this.targetScreen, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, targetScreen);
      },
      child: Text(text),
    );
  }
}
