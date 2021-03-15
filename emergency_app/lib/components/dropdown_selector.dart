import 'package:flutter/material.dart';
import 'package:emergency_app/card_gen/card_generator.dart';
import 'rounded_input_field.dart';

class DropdownSelector extends StatefulWidget {
  final String hintText;
  final List<String> items;
  final String currentItem;
  final List<CheckBoxFieldKey> itemsCheckBoxFieldKey;
  final TextFieldKey textFieldKey;
  final String additionalTextHint;
  final double width;
  final int idOfCheckBoxWithText;

  const DropdownSelector(
      {Key key, @required this.items, @required this.itemsCheckBoxFieldKey ,String hintText,
        this.currentItem, this.textFieldKey, this.width, this.idOfCheckBoxWithText, this.additionalTextHint})

      : assert(items != null),
        this.hintText = hintText != null ? hintText : "Не выбрано",
        super(key: key);

  @override
  _DropdownSelectorState createState() => _DropdownSelectorState(currentItem);
}

class _DropdownSelectorState extends State<DropdownSelector> {
  String currentItem;
  List<DropdownMenuItem<String>> dropDownItems = [];
  int checkBoxId;

  _DropdownSelectorState(this.currentItem);

  @override
  void initState() {
    super.initState();
    for (String item in widget.items) {
      dropDownItems.add(
        DropdownMenuItem(

          child: Text(
            item,
            overflow: TextOverflow.ellipsis,
          ),
          value: item,
        ),
      );
    }
  }

  @override
  void didUpdateWidget(DropdownSelector oldWidget) {
    if (this.currentItem != widget.currentItem) {
      setState(() {
        this.currentItem = widget.currentItem;
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    CardGenerator generator =  CardGenerator();
    bool _isVisible = false;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.0,
      ),

      decoration: BoxDecoration(

        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        color: Color(0xFFF2F2F2),
      ),
      child:
          DropdownButtonHideUnderline(

            child: Container(

              width: widget.width,
              height: 60,
              child:Column(
                children: [
                  DropdownButton<String>(

                  value: currentItem,
                  icon: Icon(Icons.keyboard_arrow_down),
                  iconEnabledColor: Color(0xFFEB5757),
                  iconDisabledColor: Color(0xFFEB5757),
                  items: dropDownItems,
                  hint: Text(widget.hintText),

                  //isExpanded: true,
                  onChanged: (value) {
                    setState(() {
                      currentItem = value;

                      if(currentItem == dropDownItems[widget.idOfCheckBoxWithText].value)
                        _isVisible = true;
                      else _isVisible = false;

                      for(int i = 0; i < dropDownItems.length; i++){
                        if(currentItem == dropDownItems[i].value){
                          checkBoxId = i;
                        }
                      }
                    });

                    generator.setCheckboxValue(widget.itemsCheckBoxFieldKey[checkBoxId], true);
                  },
            ),
                  Visibility(
                    visible: _isVisible,
                      child: TextBoxView(hint: widget.additionalTextHint, textFieldKey: widget.textFieldKey, width: widget.width)
                  )
                ],
              ),
          )
          ),
    );
  }
}

class TextBoxView extends StatelessWidget{
  final String hint;
  final TextFieldKey textFieldKey;
  final double width;
  TextBoxView({@required this.hint, @required this.textFieldKey, @required this.width});

  @override
  Widget build(BuildContext context){
    return Container(
      width: width,
      child:
      RoundedInputField(
        hintText: hint,
        fieldKey: textFieldKey,
      ),
    );
  }
}
