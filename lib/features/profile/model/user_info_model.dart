import 'package:markiti_app/core/api/end_points.dart';

class UserInfoModel {
  final String name;
  final String email;
  final String phone;
  final String image;
  final String role;

  UserInfoModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.image,
    required this.role,
  });
  factory UserInfoModel.fromJson(Map<String, dynamic> jsonData) {
    return UserInfoModel(
      name: jsonData[ApiKey.yourName],
      email: jsonData[ApiKey.email],
      phone: jsonData[ApiKey.phone],
      image: jsonData[ApiKey.image],
      role: jsonData[ApiKey.role],
    );
  }
}
