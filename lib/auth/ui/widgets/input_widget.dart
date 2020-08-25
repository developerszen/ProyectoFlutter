import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
    CustomInput({
        Key key,
        @required this.label,
        @required this.icon,
        this.pass = false,
        this.valitor,
        this.onSaved,
        this.inputType = TextInputType.text,
        this.maxLines = 1
    }) : super(key: key);

    final String label;
    final Icon icon;
    final bool pass;
    final int maxLines;
    final TextInputType inputType;
    final Function valitor;
    final Function onSaved;

    @override
    _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
    @override
    Widget build(BuildContext context) {
        return Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
                validator: widget.valitor,
                obscureText: widget.pass,
                keyboardType: widget.inputType,
                maxLines: widget.maxLines,
                onSaved: widget.onSaved,
                decoration: InputDecoration(
                    labelText: widget.label,
                    icon: widget.icon,
                    border: OutlineInputBorder()
                ),
            ),
        );
    }
}