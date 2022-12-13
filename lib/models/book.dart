class BookList {
  String imageUrl;
  String write;
  String title;

  BookList({
    required this.imageUrl,
    required this.write,
    required this.title,
  });
}

List<BookList> bookList = [
  BookList(
      imageUrl: 'assets/images/tranding-book1.png',
      write: 'Guy Kawasaki',
      title: 'the magic'),
  BookList(
      imageUrl: 'assets/images/tranding-book2.png',
      write: 'Guy',
      title: 'Lore'),
  BookList(
      imageUrl: 'assets/images/tranding-book3.png',
      write: 'Guy Kawasaki',
      title: 'who move'),
  BookList(
      imageUrl: 'assets/images/tranding-book1.png',
      write: 'Guy Kawasaki',
      title: 'the magic'),
  BookList(
      imageUrl: 'assets/images/tranding-book2.png',
      write: 'Guy',
      title: 'Lore'),
  BookList(
      imageUrl: 'assets/images/tranding-book3.png',
      write: 'Guy Kawasaki',
      title: 'who move'),
];
