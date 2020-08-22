import 'package:flutter/material.dart';

class BooksCreateScreen extends StatefulWidget {
    BooksCreateScreen({Key key}) : super(key: key);

    @override
    _BooksCreateScreenState createState() => _BooksCreateScreenState();
}

class _BooksCreateScreenState extends State<BooksCreateScreen> {

    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    bool _estado = false;

    TimeOfDay hora;
    DateTime fecha;

    int _radioValue = -1;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Crear Libro')
            ),
            body: Center(
                child: Container(
                    margin: EdgeInsets.all(15),
                    child: Form(
                        key: _formKey,
                        child: ListView(
                            children: [
                                TextField(
                                    autofocus: true,
                                    keyboardType: TextInputType.emailAddress,
                                    maxLines: null,
                                    // maxLength: 24,
                                    decoration: InputDecoration(
                                        icon: Icon(Icons.access_alarm),
                                        labelText: 'Nombre',
                                        border: OutlineInputBorder(),
                                        helperText: 'Ayuda asdfasdf',
                                        hintText: 'asdfasdf',
                                        prefix: Text('Sr. '),
                                        suffix: Text('Bs.'),
                                        counterText: 'saludos'
                                    ),
                                ),
                                TextFormField(
                                    autofocus: true,
                                    keyboardType: TextInputType.emailAddress,
                                    // maxLines: null,
                                    // maxLength: 24,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        icon: Icon(Icons.access_alarm),
                                        labelText: 'Edad',
                                        border: OutlineInputBorder(),
                                        helperText: 'Ayuda asdfasdf',
                                        hintText: 'asdfasdf',
                                        prefix: Text('Sr. '),
                                        suffix: Text('Bs.'),
                                        counterText: 'saludos'
                                    ),
                                    validator: (value){
                                        if (value.isEmpty) {
                                            return 'El campo debe ser llenado';
                                        }
                                        return null;
                                    },
                                ),
                                SwitchListTile(
                                    title:  Text('Estado'),
                                    value: _estado,
                                    onChanged: (value){
                                        setState(()=> _estado = value);
                                    }
                                ),

                                RadioListTile(
                                    title: Text('Masculino'),
                                    value: 0, 
                                    groupValue: _radioValue, 
                                    onChanged: (value){
                                        setState(()=> _radioValue = value);
                                    }
                                ),
                                RadioListTile(
                                    title: Text('Femenino'),
                                    value: 1, 
                                    groupValue: _radioValue, 
                                    onChanged: (value){
                                        setState(()=> _radioValue = value);
                                    }
                                ),

                                RaisedButton(
                                    child: Text('$hora'),
                                    onPressed: (){
                                        showTimePicker(
                                            context: context, 
                                            initialTime: TimeOfDay.now()
                                        ).then((value) => setState(()=> hora = value));
                                    }
                                ),

                                RaisedButton(
                                    child: Text('$fecha'),
                                    onPressed: (){
                                        showDatePicker(
                                            context: context, 
                                            initialDate: DateTime.now(), 
                                            firstDate: DateTime(2019), 
                                            lastDate: DateTime(2021)
                                        ).then((value) => setState(()=> fecha = value));
                                    }
                                ),

                                RaisedButton(
                                    child: Text('Submit'),
                                    onPressed: (){
                                        if (_formKey.currentState.validate()) {
                                            print('validado');
                                        }
                                        return null;
                                    }
                                )
                            ],
                        )
                    ),
                ),
            ),
        );
    }
}