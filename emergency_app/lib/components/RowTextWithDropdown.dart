import 'package:emergency_app/card_gen/card_generator.dart';
import 'package:flutter/cupertino.dart';

import 'dropdown_selector.dart';

class RowTextWithDropdown extends StatelessWidget {


  RowTextWithDropdown({@required this.text,@required this.list, @required this.keylist});
  final String text;
  final List<String> list;
  final List<CheckBoxFieldKey> keylist;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 16),
            ),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Container(
            // height: 60.0,
            child: DropdownSelector(
              items: list,
              itemsCheckBoxFieldKey: keylist,
            ),
          ),
        ),
      ],
    );
  }
}
