class SubCategoryModel {
  String categoryid;
  String name;
  String sid;

  SubCategoryModel({
    required this.categoryid,
    required this.name,
    required this.sid,
  });

  factory SubCategoryModel.fromJson(json) {
    return SubCategoryModel(
      categoryid: json['categoryid'],
      name: json['name'],
      sid: json['sid'],
    );
  }
}
