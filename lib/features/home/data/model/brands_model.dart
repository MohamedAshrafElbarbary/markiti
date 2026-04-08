class BrandModel {
  final String? name;
  final String? emoji;

  BrandModel({this.name, this.emoji});

  factory BrandModel.fromJson(Map<String, dynamic> json) {
    return BrandModel(name: json['name'], emoji: json['emoji']);
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'emoji': emoji};
  }
}
