import 'package:flutter/material.dart';

class CategoriesCardWidget extends StatefulWidget {
    CategoriesCardWidget({
        Key key,
        @required this.urlImage,
        @required this.categoryName,
        this.onTap
    }) : super(key: key);

    final String urlImage;
    final String categoryName;
    final Function onTap;

    @override
    _CategoriesCardWidgetState createState() => _CategoriesCardWidgetState();
}

class _CategoriesCardWidgetState extends State<CategoriesCardWidget> {
    @override
    Widget build(BuildContext context) {
        return GestureDetector(
            onTap: widget.onTap,
            child: Container(
                width: 350,
                height: 150,
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                alignment: Alignment(0.0, 0.0),
                child: Text(
                    widget.categoryName,
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
                        image: NetworkImage(widget.urlImage),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
            ),
        );
    }
}