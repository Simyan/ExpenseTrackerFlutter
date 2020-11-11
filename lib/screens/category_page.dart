import 'package:expense_tracker/enums/category_enum.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/store.dart';
import 'package:expense_tracker/components/selection_button.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _CategoryPageState createState() => _CategoryPageState();


}

class _CategoryPageState extends State<CategoryPage> {
  List<Store> storeList = [ new Store('Mirzam', null), new Store('Metro', null), new Store('Krispy Kreme', null)];
  int index = 0;

  void selectCategory(Category choice){
    setState(()
    {
      storeList[index].category = choice;
      storeList.length - 1 > index ? index++ : null ;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back),
              tooltip: 'Manage Categories',
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
        backgroundColor: const Color(0xff1d1e33).withOpacity(0.1),
        body: Padding(
          padding: const EdgeInsets.only(top:150.0),
          child: Column(

            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(storeList[index].name,
                    style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xffFBF5F3))),
              ),
              Text('${index+1} out of ${storeList.length}',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xffFBF5F3))),
              const SizedBox(height: 25),
              SelectionButton(selectText: 'Food', selectCategory: Category.food, onSelect: selectCategory),
              SelectionButton(selectText: 'rta', selectCategory: Category.rta, onSelect: selectCategory),
            ],
          ),
        ));
  }
}
