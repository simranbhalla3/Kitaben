class Book {
  String title,
      writer,
      price,
      image,
      description =
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra, luctus nisi ac, semper enim. Vestibulum in mi feugiat, mattis erat suscipit, fermentum quam. Mauris non urna sed odio congue rhoncus. \nAliquam a dignissim ex. Suspendisse et sem porta, consequat dui et, placerat tortor. Sed elementum nunc a blandit euismod. Cras condimentum faucibus dolor. Etiam interdum egestas sagittis. Aliquam vitae molestie eros. Cras porta felis ac eros pellentesque, sed lobortis mi eleifend. Praesent ut.';
  int pages;
  double rating;

  Book(
      this.title, this.writer, this.price, this.image, this.rating, this.pages);
}

final List<Book> books = [
  Book('The Rudest Book Ever', 'Shwetabh Gangwar ', 'Rs 200.00',
      'res/rude.jpeg', 4.6, 224),
  Book(' Life is What You Make it', ' Preeti Shenoy', 'Rs 150.00',
      'res/life.jpeg', 3.6, 224),
  Book(' One Indian girl', ' Chetan Bhagat', 'Rs 127.00', 'res/girl.jpeg', 3.3,
      280),
  Book(' That long silence', ' Shashi Deshpande', 'Rs 79.00',
      'res/silence.jpeg', 3.5, 244),
  Book(' Before the Coffee Gets Cold', ' Toshikazu Kawaguchi', 'Rs 312.00',
      'res/coffee.jpeg', 4.4, 212),
  Book('The Almanack of Naval Ravikant', 'Jorgenson Eric', 'Rs 749.00',
      'res/taonv.jpeg', 4.2, 242),
  Book('  Klara and the Sun', ' Kazuo Ishiguro', 'Rs 440.00', 'res/klara.jpeg',
      3.9, 307),
  Book(' The Origin of Species', ' Charles Darwin', 'Rs 149.00',
      'res/species.jpeg', 4, 502),
  Book('Think Like a Monk - Train your Mind for Peace and Purpose Every Day',
      'Jay Shetty', 'Rs 295.00', 'res/think.jpeg', 4.7, 320),
];
