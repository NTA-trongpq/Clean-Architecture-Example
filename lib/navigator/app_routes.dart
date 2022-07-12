import 'package:clean_tdd/features/presentation/pages/cinema/cinema_screen.dart';
import 'package:clean_tdd/features/presentation/pages/home/home_screen.dart';

class AppRoutes {
  static const initialRoute = home;
  static final appRoutes = {
    "/home" : (context) => const HomeScreen(),
    "/cinema" : (context) => const CinemaScreen(),
  };

  static const home = "/home";
  static const cinema = "/cinema";
}

