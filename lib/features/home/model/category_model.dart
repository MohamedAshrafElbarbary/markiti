class CategoryModel {
  final String? slug;
  final String? name;
  final String? url;
  final String? image;

  const CategoryModel({this.slug, this.name, this.url, this.image});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      slug: json['slug'],
      name: json['name'],
      url: json['url'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'slug': slug, 'name': name, 'url': url, 'image': image};
  }
}
