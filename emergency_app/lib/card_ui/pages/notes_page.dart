import 'package:emergency_app/card_gen/card_generator.dart';
import 'package:emergency_app/components/rounded_input_field.dart';
import 'package:flutter/cupertino.dart';

import 'base_page.dart';

class NotesPage extends StatelessWidget implements BasePage {
  @override
  String screenName = "Примечания";

  NotesPage();

  String get name => screenName;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        width: width,
        margin: EdgeInsets.all(16),
        child: Column(children: <Widget>[
          RoundedInputField(
              hintText: "Примечания", fieldKey: TextFieldKey.SECTION_37_TEXT_1)
        ]));
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> origin/main
