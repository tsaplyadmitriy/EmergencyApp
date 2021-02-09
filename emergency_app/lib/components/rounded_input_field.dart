import 'package:flutter/material.dart';

class RoundedInputField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RoundedInputFieldState();



}

class _RoundedInputFieldState extends State<RoundedInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: beautifulDecoration()
    );
  }
}


InputDecoration beautifulDecoration() {
    return new InputDecoration(
        hintText: "Aee",
        filled: true,
        fillColor: Color(0xFFF2F2F2),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12.0)
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12.0)
        )
    );


}
