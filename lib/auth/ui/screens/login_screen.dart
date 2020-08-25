import 'package:book_app/auth/ui/widgets/input_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
    LoginScreen({Key key}) : super(key: key);

    @override
    _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

    final _formKey = GlobalKey<FormState>();
    String _password = '';
    String _email = '';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text('Login'),
                        Form(
                            key: _formKey,
                            child: Column(
                                children: [
                                    CustomInput(
                                        label: 'Correo', 
                                        icon: Icon(Icons.mail),
                                        valitor: (value){
                                            if(value.isEmpty){
                                                return 'El correo debe ser llenado';
                                            }
                                        },
                                    ),
                                    CustomInput(
                                        label: 'Password', 
                                        pass: true,
                                        icon: Icon(Icons.https),
                                        valitor: (value){
                                            if(value.isEmpty){
                                                return 'El password debe ser llenado';
                                            }
                                        },
                                    ),
                                    RaisedButton(
                                        child: Text('Login'),
                                        onPressed: (){

                                        }
                                    )
                                ],
                            )
                        )
                    ],
                ),
            ),
        );
    }

    _submit() {
        
    }
}