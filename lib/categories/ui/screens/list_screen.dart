import 'package:book_app/categories/ui/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class CategoriesListScreen extends StatelessWidget {
    const CategoriesListScreen({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return ListView(
            children: [
                CategoriesCardWidget(urlImage: 'https://picsum.photos/300/150?random=1'),
                CategoriesCardWidget(urlImage: 'https://picsum.photos/300/150?random=2'),
                CategoriesCardWidget(urlImage: 'https://picsum.photos/300/150?random=3'),
                CategoriesCardWidget(urlImage: 'https://picsum.photos/300/150?random=4'),
            ],
        );
        
        // Center(
        //     child: CategoriesCardWidget(),
        // );
    }
}