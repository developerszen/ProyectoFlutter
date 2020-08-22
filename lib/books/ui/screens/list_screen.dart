import 'package:book_app/books/ui/widgets/book_widget.dart';
import 'package:flutter/material.dart';

class BooksListScreen extends StatelessWidget {
    const BooksListScreen({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: ListView(
                children: [
                    BookWidget( imageUrl: 'https://picsum.photos/300/300?random=1' ),
                    BookWidget( imageUrl: 'https://picsum.photos/300/300?random=2' ),
                    BookWidget( imageUrl: 'https://picsum.photos/300/300?random=3' ),
                    BookWidget( imageUrl: 'https://picsum.photos/300/300?random=4' ),
                ],
            ),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
                backgroundColor: Color(0xFFFF6B03),
                onPressed: (){
                    Navigator.pushNamed(context, '/booksCreateScreen');
                }
            ),
        );
    }
}