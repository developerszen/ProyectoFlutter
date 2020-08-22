import 'package:book_app/books/ui/screens/create_screen.dart';
import 'package:book_app/home/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Book App',
            debugShowCheckedModeBanner: false,
            // home: HomeScreen(),
            initialRoute: '/homeScreen',
            routes: {
                '/homeScreen'       : (BuildContext context) => HomeScreen(),
                '/booksCreateScreen': (BuildContext context) => BooksCreateScreen(),
            },
        );
    }
}