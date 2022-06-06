class LevelModel {
  String lid;
  String name;
  String categoryid;
  int level;

  LevelModel(
      {required this.lid,
      required this.name,
      required this.categoryid,
      required this.level});

  factory LevelModel.fromJson(json) {
    return LevelModel(
        lid: json['lid'],
        name: json['name'],
        categoryid: json['categoryid'],
        level: json['level']);
  }
}
