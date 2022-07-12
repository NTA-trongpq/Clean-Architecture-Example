class ApiConfig {
  ApiConfig._internal();

  static final _instance = ApiConfig._internal();

  static ApiConfig get getInstance => _instance;
  final String baseUrl = "https://api.themoviedb.org";

  String apiKey = "";
}
