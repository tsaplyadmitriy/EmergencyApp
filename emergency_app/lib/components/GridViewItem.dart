import 'package:emergency_app/card_gen/card_generator.dart';
import 'package:flutter/cupertino.dart';

import 'dropdown_selector.dart';

class GridViewItem extends StatelessWidget {


  GridViewItem({@required this.text,@required this.list, @required this.keylist});
  final String text;
  final List<String> list;
  final List<CheckBoxFieldKey> keylist;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        SizedBox(height: 8,),
        Expanded(
          child: DropdownSelector(
              items: list,
            itemsCheckBoxFieldKey: keylist,
          ),
        ),
      ],
    );
  }
}
