class SignInModel {
  final String message;
  final String token;
  final User user;

  SignInModel({required this.message, required this.token, required this.user});

  factory SignInModel.fromJson(Map<String, dynamic> json) {
    return SignInModel(
      message: json['message'] ?? '',
      token: json['token'] ?? '',
      user: User.fromJson(json['user'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {'message': message, 'token': token, 'user': user.toJson()};
  }
}

class User {
  final String name;
  final String phone;
  final String email;
  final String role;
  final String image;

  User({
    required this.name,
    required this.phone,
    required this.email,
    required this.role,
    required this.image,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'] ?? '',
      phone: json['phone'] ?? '',
      email: json['email'] ?? '',
      role: json['role'] ?? '',
      image: json['image'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'phone': phone,
      'email': email,
      'role': role,
      'image': image,
    };
  }
}

// class SignInModel {
//   String? message;
//   String? token;
//   User? user;

//   SignInModel({this.message, this.token, this.user});

//   SignInModel.fromJson(Map<String, dynamic> json) {
//     message = json['message'];
//     token = json['token'];
//     user = json['user'] != null ? User.fromJson(json['user']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['message'] = message;
//     data['token'] = token;
//     if (user != null) {
//       data['user'] = user!.toJson();
//     }
//     return data;
//   }
// }

// class User {
//   String? name;
//   String? phone;
//   String? email;
//   String? role;
//   String? image;

//   User({this.name, this.phone, this.email, this.role, this.image});

//   User.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     phone = json['phone'];
//     email = json['email'];
//     role = json['role'];
//     image = json['image'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['name'] = name;
//     data['phone'] = phone;
//     data['email'] = email;
//     data['role'] = role;
//     data['image'] = image;
//     return data;
//   }
// }
