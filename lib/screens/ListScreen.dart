
import 'package:flutter/material.dart';
import 'package:flutter_lab/components/ItemList.dart';
import 'package:flutter_lab/models/TypeItem.dart';
import 'package:flutter_lab/screens/InputScreen.dart';

class ListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListScreenState();
  }
}

class ListScreenState extends State<ListScreen> {
  final List<TypeItem> _listItems = List();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('List Screen'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.android),
          onPressed: () {
            final Future<TypeItem> future =
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return InputScreen();
            }));
            future.then((item) {
              Future.delayed(Duration(seconds: 1), () {
                debugPrint('$item');
                if (item != null) {
                  setState(() {
                    _listItems.add(item);
                  });
                }
              });
            });
          },
        ),
        body: ListView.builder(
          itemCount: _listItems.length,
          itemBuilder: (context, index) {
            return ItemList(_listItems[index]);
          },
        ),
      ),
    );
  }
}