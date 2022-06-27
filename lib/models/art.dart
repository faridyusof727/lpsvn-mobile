class Art {
/*
  * Feed with default not-null value to counter null safety precaution
  * */
  int id = 0;
  String author = "";
  String title = "";
  String img = "";
  String audioUrl = "";
  String description = "";

  Art({
    required this.id,
    required this.author,
    required this.title,
    required this.img,
    required this.audioUrl,
    required this.description,
  });

  Art.fromJson(Map<String, dynamic> json) {
    try {
      id = json['id'];
      author = json['author'];
      title = json['title'];
      img = json['img'];
      audioUrl = json['audio_url'];
      description = json['description'];
    } catch (e) {
//do later
    }
  }
}
