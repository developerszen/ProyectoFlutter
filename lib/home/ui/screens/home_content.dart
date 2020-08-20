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
                            Container(
                                color: Colors.green,
                                width: 100,
                                height: 100,
                            ),
                        ],
                    ),
                ),
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
                            Container(
                                color: Colors.green,
                                width: 100,
                                height: 100,
                            ),
                            Container(
                                color: Colors.yellow,
                                width: 100,
                                height: 100,
                            ),
                        ],
                    ),
                ),
            ],
        );
    }
}