import 'package:book_app/books/ui/screens/list_screen.dart';
import 'package:book_app/categories/ui/screens/list_screen.dart';
import 'package:book_app/home/ui/screens/home_content.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
    const HomeScreen({Key key}) : super(key: key);

    @override
    _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

    int _currentIndex = 0;
    Widget _content = HomeContent();
    String _title = 'Home';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                centerTitle: false,
                backgroundColor: Colors.white,
                elevation: 0,
                title: Text(
                    _title,
                    style: TextStyle(
                        color: Colors.black
                    ),
                ),
            ),
            body: _content,
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: _currentIndex,
                // type: BottomNavigationBarType.shifting,
                selectedItemColor: Color(0xffff6b03), // #FF6B03
                items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home, size: 30),
                        title: Text('Home'),
                        // activeIcon: Text('data')
                        // backgroundColor: Colors.amberAccent
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.apps, size: 30),
                        title: Text('Categorías'),
                        // backgroundColor: Colors.red
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.collections_bookmark, size: 30),
                        title: Text('Libros'),
                        // backgroundColor: Colors.cyan
                    ),
                ],
                onTap: (index){
                    setState(() {
                        _currentIndex = index;
                        switch (_currentIndex) {
                            case 0:
                                _title = 'Home';
                                _content = HomeContent();
                                break;
                            case 1:
                                _title = 'Categorías';
                                _content = CategoriesListScreen();
                                break;
                            case 2:
                                _title = 'Libros';
                                _content = BooksListScreen();
                                break;
                            default:
                        }
                    });
                },
            ),
        );
    }
}