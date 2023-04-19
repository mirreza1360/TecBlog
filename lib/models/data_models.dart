class Hashtak {
  String title;

  Hashtak({required this.title});
}

class BlogList {
  int id;
  String imageUrl;
  String title;
  String writer;
  String writerImageUrl;
  String content;
  String view;
  String date;

  BlogList(
      {required this.id,
      required this.imageUrl,
      required this.title,
      required this.writer,
      required this.writerImageUrl,
      required this.content,
      required this.view,
      required this.date});
}
