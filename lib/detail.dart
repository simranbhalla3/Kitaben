import 'data.dart';
import 'rating_bar.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Book book;

  Detail(this.book);

  @override
  Widget build(BuildContext context) {
    //app bar
    final appBar = AppBar(
      elevation: .5,
      title: Text(
        'Book Info',
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          fontFamily: 'Andada',
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
          iconSize: 35,
        )
      ],
    );

    ///detail of book image and it's pages
    final topLeft = Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(12.0),
          child: Hero(
            tag: book.title,
            child: Material(
              elevation: 15.0,
              shadowColor: Colors.blue.shade900,
              child: Image(
                image: AssetImage(book.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        text(
          '${book.pages} pages',
          color: Colors.black87,
          size: 18,
        )
      ],
    );

    ///detail top right
    final topRight = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text(
          book.title,
          size: 24,
          isBold: true,
          padding: EdgeInsets.only(top: 16.0),
        ),
        text(
          'by ${book.writer}',
          color: Colors.black,
          size: 20,
          padding: EdgeInsets.only(top: 8.0, bottom: 16.0),
        ),
        Row(
          children: <Widget>[
            text(
              book.price,
              isBold: true,
              size: 20,
              padding: EdgeInsets.only(right: 8.0),
            ),
            RatingBar(rating: book.rating)
          ],
        ),
        SizedBox(
          height: 32.0,
        ),
        Material(
          borderRadius: BorderRadius.circular(20.0),
          shadowColor: Colors.blue.shade200,
          elevation: 5.0,
          child: MaterialButton(
            onPressed: () {},
            minWidth: 180.0,
            height: 60,
            color: Colors.amber.shade300,
            child: text('BUY IT NOW', color: Colors.black, size: 20),
          ),
        )
      ],
    );

    final topContent = Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.only(bottom: 25.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 2, child: topLeft),
          Flexible(flex: 2, child: topRight),
        ],
      ),
    );

    ///scrolling text description
    final bottomContent = Container(
      height: 300.0,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Text(
          book.description,
          style: TextStyle(fontSize: 20.0, height: 1.7, fontFamily: 'Gowun'),
        ),
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }

  ///create text widget
  text(String data,
          {Color color = Colors.black87,
          num size = 14,
          EdgeInsetsGeometry padding = EdgeInsets.zero,
          bool isBold = false}) =>
      Padding(
        padding: padding,
        child: Text(
          data,
          style: TextStyle(
              color: color,
              fontFamily: 'Gowun',
              fontSize: size.toDouble(),
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      );
}
