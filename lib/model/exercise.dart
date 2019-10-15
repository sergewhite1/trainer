class Exercise {
  final String title;
  final String image;
  final String work;

  Exercise({this.title, this.image, this.work})
      : assert(title != null && title.isNotEmpty);

  Exercise.fromMap(Map<String, dynamic> data)
      : title = data["title"],
        image = data["image"],
        work = data["work"] {
    assert(title != null && title.isNotEmpty);
  }

  Map<String, dynamic> toMap() => {
        "title": title,
        "image": image,
        "work": work,
      };
}
