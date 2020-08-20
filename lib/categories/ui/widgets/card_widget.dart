import 'package:flutter/material.dart';

class CategoriesCardWidget extends StatefulWidget {
    CategoriesCardWidget({Key key}) : super(key: key);

    @override
    _CategoriesCardWidgetState createState() => _CategoriesCardWidgetState();
}

class _CategoriesCardWidgetState extends State<CategoriesCardWidget> {
    @override
    Widget build(BuildContext context) {
        return Container(
            // width: 250,
            height: 150,
            alignment: Alignment(0.0, 0.0),
            child: Text(
                'Categoria',
                style: TextStyle(
                    fontFamily:"PingFang SC",
                    fontWeight: FontWeight.w500,
                    fontSize: 40,
                    color: Colors.white,
                    shadows: [
                        Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 10.0,
                            color: Colors.black
                        )
                    ]
                ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/220/150'),
                    fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
        );
    }
}