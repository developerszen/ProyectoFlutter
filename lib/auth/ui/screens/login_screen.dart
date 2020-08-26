import 'package:book_app/auth/bloc/auth_bloc.dart';
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
                                            setState(() => _email = value);
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
                                            setState(() => _password = value);
                                        },
                                    ),
                                    RaisedButton(
                                        child: Text('Login'),
                                        onPressed: _submit
                                    )
                                ],
                            )
                        )
                    ],
                ),
            ),
        );
    }

    _submit() async {
        if (_formKey.currentState.validate()) {
            final _login = await AuthBloc().login(
                context, 
                email: _email, 
                password: _password
            );

            if (_login) {
                print('Logueado');
                Navigator.pushNamedAndRemoveUntil(context, '/homeScreen', (route) => false);
            } else {
                print('Datos erroneos');
            }
        }
    }
}