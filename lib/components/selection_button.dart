import 'package:expense_tracker/enums/category_enum.dart';
import 'package:flutter/material.dart';

class SelectionButton extends StatelessWidget {
  final Function onSelect;
  final String selectText;
  final Category selectCategory;

  //SelectionButton({Key key, this.selectText, this.selectCategory, this.onSelect}) : super(key: key);
  SelectionButton({@required this.selectText, @required this.selectCategory, @required this.onSelect});
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () => onSelect(selectCategory),
      child: Container(
        width: 250,
        child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: Text(selectText,

                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff4dccbd))),
            )),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(color: Color(0xFF1D1E33), borderRadius: BorderRadius.circular(10.0),
          //boxShadow: [BoxShadow(color: Color(0xFFFFFFFF).withAlpha(50), spreadRadius: 3.2, blurRadius: 4, offset: Offset(0,3))]
        ),
      ),
    );
  }
}
