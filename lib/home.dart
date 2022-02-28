import 'package:book_my_app/data.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  // static var tag;
  static String tag = 'home';

  @override
  Widget build(BuildContext context) {
    //app bar
    final appBar = AppBar(
      backgroundColor: Colors.cyan,
      elevation: .5,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
        iconSize: 35,
      ),
      title: Text(
        'Latest Books',
        style: TextStyle(
          fontFamily: 'Andada',
          fontWeight: FontWeight.bold,
          fontSize: 35,
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

    ///create book tile hero
    createTile(Book book) => Hero(
          tag: book.title,
          child: Material(
            elevation: 15.0,
            shadowColor: Colors.cyan.shade50,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'detail/${book.title}');
              },
              child: Image(
                image: AssetImage(book.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );

    ///create book grid tiles
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2 / 3,
            crossAxisCount: 3,
            mainAxisSpacing: 50.0,
            crossAxisSpacing: 20.0,
            children: books.map((book) => createTile(book)).toList(),
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar,
      body: grid,
    );
  }
}
