class EndPoint {
  static String baseUrl = "https://supermarket-dan1.onrender.com/api/v1";
  static String signIn = "/auth/signIn";
  static String signUp = "/auth/signUp";
  static String restPassword = "/auth/resetPassword";
  static String codePassword = "/auth/resetPassCode";
  static String addImage = '/portfoilo/addImage';
  static String getUserData = '/portfoilo/userData';
  static String getUserDataEndPoint(dynamic id) {
    return "portfoilo/userData/$id";
  }
}

class ApiKey {
  static String status = "status";
  static String errorMessage = "ErrorMessage";
  static String email = "email";
  static String password = "password";
  static String message = "message";
  static String token = "token";
  static String id = "id";
  static String yourName = "name";
  static String userName = "username";
  static String phone = "phone";
  static String confirmPassword = "confirmPassword";
  static String image = "image";
  static String user = "user";
  static String role = "role";
}
