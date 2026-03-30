import 'package:markiti_app/core/api/end_points.dart';

class ErrorModel {
  final String status;
  final String errorMessage;

  ErrorModel({required this.status, required this.errorMessage});
  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      status: jsonData[ApiKey.status]?.toString() ?? 'Unknown',
      errorMessage:
          jsonData[ApiKey.errorMessage]?.toString() ??
          jsonData[ApiKey.message]?.toString() ??
          'An error occurred',
    );
  }
}
