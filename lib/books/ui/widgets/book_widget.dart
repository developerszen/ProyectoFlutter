import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
    const BookWidget({
        Key key,
        @required this.imageUrl,
    }) : super(key: key);

    final String imageUrl;

    @override
    Widget build(BuildContext context) {
        return Container(
            margin: EdgeInsets.fromLTRB(15, 5, 15, 0),
            height: 150,
            child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                    children: [
                        // Widget Imagen
                        Container(
                            width: 100,
                            height: 150,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.network(
                                    imageUrl,
                                    fit: BoxFit.fitHeight,
                                ),
                            ),
                        ),
                        // Widget Contenido
                        contentCard(context)
                    ],
                ),
            )
        );
    }

    Widget contentCard(context){
        return Container(
            width: MediaQuery.of(context).size.width * 0.55,
            margin: EdgeInsets.all(15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Text(
                        "The Forgotten Hours",    
                        style: TextStyle(
                            fontFamily: "PingFang SC",
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color:Color(0xff333333),  
                        ),
                    ),
                    SizedBox(height: 6),
                    Text(
                        "lorem ipsum dolor emet thieg yo no seoyasdf lorem ipsum dolor emet thieg yo no seoyasdf",    
                        style: TextStyle(
                            fontFamily: "PingFang SC",
                            fontSize: 11,
                            color:Color(0xff666666),  
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                    ),
                ],
            ),
        );
    }
}