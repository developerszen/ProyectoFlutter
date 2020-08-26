import 'package:book_app/categories/bloc/category_bloc.dart';
import 'package:book_app/categories/models/category_model.dart';
import 'package:book_app/categories/ui/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class CategoriesListScreen extends StatelessWidget {
    const CategoriesListScreen({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: createList(),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
                backgroundColor: Color(0xFFFF6B03),
                onPressed: (){
                    Navigator.pushNamed(context, '/category/create');
                }
            ),
        );
        // return ListView(
        //     children: [
        //         CategoriesCardWidget(urlImage: 'https://picsum.photos/300/150?random=1'),
        //         CategoriesCardWidget(urlImage: 'https://picsum.photos/300/150?random=2'),
        //         CategoriesCardWidget(urlImage: 'https://picsum.photos/300/150?random=3'),
        //         CategoriesCardWidget(urlImage: 'https://picsum.photos/300/150?random=4'),
        //     ],
        // );
    }

    Widget createList() {
        return FutureBuilder(
            future: CategoryBloc().listCategories(),
            builder: (BuildContext context, AsyncSnapshot<List<CategoryModel>> snapshot) {
                if(snapshot.hasData) {
                    final data = snapshot.data;
                    return ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, i) {
                            return CategoriesCardWidget(
                                categoryName: data[i].name,
                                urlImage: 'https://picsum.photos/300/150?random=$i',
                                onTap: (){
                                    Navigator.pushNamed(context, '/category/detail', arguments: data[i]);
                                },
                            );
                        }
                    );
                } else {
                    return Center(
                        child: CircularProgressIndicator(),
                    );
                } 
            }
        );
    }
}