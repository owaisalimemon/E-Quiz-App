class CategoryModel {
  String cid;
  String name;
  String image;

  CategoryModel({
    required this.cid,
    required this.name,
    required this.image,
  });

  factory CategoryModel.fromJson(json) {
    return CategoryModel(
      cid: json['cid'],
      name: json['name'],
      image: json['image'],
    );
  }
}
