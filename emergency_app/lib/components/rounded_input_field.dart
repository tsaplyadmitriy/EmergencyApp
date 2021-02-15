import 'package:emergency_app/card_gen/card_generator.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatefulWidget {
  final String _hintText;
  final TextFieldKey _fieldKey;


  const RoundedInputField(
      {Key key, @required String hintText, @required TextFieldKey fieldKey})
      : assert(hintText != null),
        _hintText = hintText,
        _fieldKey = fieldKey,

        super(key: key);

  @override
  State<StatefulWidget> createState() => _RoundedInputFieldState();
}

class _RoundedInputFieldState extends State<RoundedInputField> {


  @override
  Widget build(BuildContext context) {
    CardGenerator generator =  CardGenerator();
    return TextFormField(

      
      controller: TextEditingController(text: generator.getTextValue(widget._fieldKey)),
      decoration: beautifulDecoration(widget._hintText),
      onChanged: (value) {
          
        generator.setTextValue(widget._fieldKey, value);
        


        },
    );
  }
}

InputDecoration beautifulDecoration(String hint) {
  OutlineInputBorder noBorder = OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(12.0),
  );

  return new InputDecoration(
    hintText: hint,
    filled: true,
    fillColor: Color(0xFFF2F2F2),
    focusedBorder: noBorder,
    enabledBorder: noBorder,
  );
}