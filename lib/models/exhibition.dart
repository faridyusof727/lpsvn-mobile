class Exhibition {
  /*
  * Feed with default not-null value to counter null safety precaution
  * */
  int id = 0;
  String name = "";
  String bannerImg = "";
  String description = "";

  Exhibition({
    required this.id,
    required this.name,
    required this.bannerImg,
    required this.description,
  });

  Exhibition.fromJson(Map<String, dynamic> json) {
    try {
      id = json['id'];
      name = json['name'];
      bannerImg = json['banner_img'];
      description = json['description'];
    } catch (e) {
      //do later
    }
  }
}
