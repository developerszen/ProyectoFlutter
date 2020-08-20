import 'package:book_app/categories/ui/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class CategoriesListScreen extends StatelessWidget {
    const CategoriesListScreen({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return ListView(
            children: [
                CategoriesCardWidget(),
                CategoriesCardWidget(),
                CategoriesCardWidget(),
                CategoriesCardWidget(),
            ],
        );
        
        // Center(
        //     child: CategoriesCardWidget(),
        // );
    }
}