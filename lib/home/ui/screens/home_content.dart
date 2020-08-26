import 'package:book_app/books/ui/widgets/book_widget.dart';
import 'package:book_app/categories/ui/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
    const HomeContent({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Column(
            children: [
                Text(
                    'Categorías',
                    style: TextStyle(
                        fontFamily: 'PingFang SC',
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),
                ),
                Container(
                    height: 200,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                            // CategoriesCardWidget(urlImage: 'https://picsum.photos/300/150?random=1'),
                            // CategoriesCardWidget(urlImage: 'https://picsum.photos/300/150?random=2'),
                            // CategoriesCardWidget(urlImage: 'https://picsum.photos/300/150?random=3'),
                            // CategoriesCardWidget(urlImage: 'https://picsum.photos/300/150?random=4'),
                        ],
                    ),
                ),
                SizedBox(height: 10),
                Text(
                    'Libros',
                    style: TextStyle(
                        fontFamily: 'PingFang SC',
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),
                ),
                Expanded(
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                            BookWidget( imageUrl: 'https://picsum.photos/300/300?random=1' ),
                            BookWidget( imageUrl: 'https://picsum.photos/300/300?random=2' ),
                            BookWidget( imageUrl: 'https://picsum.photos/300/300?random=3' ),
                            BookWidget( imageUrl: 'https://picsum.photos/300/300?random=4' ),
                        ],
                    ),
                ),
            ],
        );
    }
}