import 'package:flutter/material.dart';
import 'package:book_app/categories/bloc/category_bloc.dart';
import 'package:book_app/categories/models/category_model.dart';

class CategoryDetailScreen extends StatelessWidget {
    const CategoryDetailScreen({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {

        final CategoryModel category = ModalRoute.of(context).settings.arguments;
        return Scaffold(
            appBar: AppBar(
                iconTheme: IconThemeData(
                    color: Colors.black
                ),
                centerTitle: false,
                elevation: 0,
                title: Text(
                    'Detalle de Categoría',
                    style: TextStyle(
                        color: Colors.black
                    ),
                ),
                backgroundColor: Colors.white,
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text(category.name),
                        Text(category.created_at)
                    ],
                ),
            ),
            floatingActionButton: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                    FloatingActionButton(
                        heroTag: 1,
                        backgroundColor: Colors.amber,
                        child: Icon(Icons.edit),
                        onPressed: () {
                            Navigator.pushNamed(context, '/category/create', arguments: category);
                        }
                    ),
                    SizedBox(width: 10),
                    FloatingActionButton(
                        heroTag: 2,
                        backgroundColor: Colors.red,
                        child: Icon(Icons.delete),
                        onPressed: () async {
                            await CategoryBloc().deleteCategory(category.id);
                            Navigator.pushNamedAndRemoveUntil(context, '/homeScreen', (route) => false);
                        }
                    ),
                ],
            ),
        );
    }
}