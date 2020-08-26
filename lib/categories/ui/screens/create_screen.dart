import 'package:book_app/auth/ui/widgets/input_widget.dart';
import 'package:book_app/categories/bloc/category_bloc.dart';
import 'package:book_app/categories/models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryCreateScreen extends StatefulWidget {
    CategoryCreateScreen({Key key}) : super(key: key);

    @override
    _CategoryCreateScreenState createState() => _CategoryCreateScreenState();
}

class _CategoryCreateScreenState extends State<CategoryCreateScreen> {

    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    CategoryModel category = new CategoryModel();

    @override
    Widget build(BuildContext context) {

        final CategoryModel dataCategory = ModalRoute.of(context).settings.arguments;
        if (dataCategory != null) category = dataCategory;

        return Scaffold(
            appBar: AppBar(
                centerTitle: false,
                iconTheme: IconThemeData(
                    color: Colors.black
                ),
                elevation: 0,
                title: Text(
                    'Registro de Categoría',
                    style: TextStyle(
                        color: Colors.black
                    ),
                ),
                backgroundColor: Colors.white,
            ),
            body: Center(
                child: Container(
                    margin: EdgeInsets.all(10),
                    child: Form(
                        key: _formKey,
                        child: Column(
                            children: [
                                CustomInput(
                                    label: 'Nombre', 
                                    icon: Icon(Icons.apps),
                                    initialValue: category.name,
                                    onSaved: (value) => category.name = value,
                                    valitor: (value){
                                        if (value.length == 0) {
                                            return 'Este campo es requerido';
                                        }
                                        return null;
                                    },
                                ),
                                RaisedButton(
                                    color: Color(0xFFFF6B03),
                                    child: Text(
                                        'Registrar',
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                    ),
                                    onPressed: submit
                                )
                            ],
                        )
                    )
                ),
            ),
        );
    }

    submit() async {
        if(_formKey.currentState.validate()){
            _formKey.currentState.save();
            if(category.id != null) {
                await CategoryBloc().editCategory(category);
            } else {
                await CategoryBloc().createCategory(category);
            }
        }
        Navigator.pushNamedAndRemoveUntil(context, '/homeScreen', (route) => false);
    }
}