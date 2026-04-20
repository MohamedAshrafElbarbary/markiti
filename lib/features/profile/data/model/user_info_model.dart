class UserInfoModel {
  final Message? message;

  UserInfoModel({this.message});

  factory UserInfoModel.fromJson(Map<String, dynamic> json) {
    return UserInfoModel(
      message: json['message'] != null
          ? Message.fromJson(json['message'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {'message': message?.toJson()};
  }
}

class Message {
  final String? id;
  final String? name;
  final String? phone;
  final String? email;
  final String? address;
  final String? image;

  Message({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.address,
    this.image,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['_id'],
      name: json['name'],
      phone: json['phone'],
      email: json['email'],
      address: json['address'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'name': name,
      'phone': phone,
      'email': email,
      'address': address,
      'image': image,
    };
  }
}
