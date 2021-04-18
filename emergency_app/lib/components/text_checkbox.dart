import 'package:emergency_app/card_gen/card_generator.dart';
import 'package:flutter/material.dart';

class TextCheckbox extends StatefulWidget {
  final String text;
  final CheckBoxFieldKey checkKey;
  static var width=180.0;
  static var height=47.0;

  const TextCheckbox({Key key, @required this.text, @required this.checkKey})
      : assert(text != null),
        super(key: key);

  @override
  _TextCheckboxState createState() => _TextCheckboxState();
}

class _TextCheckboxState extends State<TextCheckbox> {
  bool _checked = false;

  bool get checked => _checked;

  set checked(bool value) {
    setState(() {
      _checked = value;
    });
  }

  void _swapChecked() {
    setState(() => _checked = !_checked);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: TextCheckbox.width,
      height: TextCheckbox.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        color: Color(0xFFF2F2F2),
      ),
      child: InkWell(
        onTap: () => _swapChecked(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 32,
              height: 32,
              child: Checkbox(
                value: _checked,
                onChanged: (val) => _swapChecked(),
              ),
            ),
            Expanded(
              child: Text(
                widget.text,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
