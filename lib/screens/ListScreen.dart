import 'package:flutter/material.dart';
import 'package:flutter_lab/components/ItemList.dart';
import 'package:flutter_lab/models/TypeItem.dart';
import 'package:flutter_lab/screens/InputScreen.dart';

const _titleAppBar = 'List Screen';

class ListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
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
          title: Text(_titleAppBar),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.android),
          onPressed: () {
            final Future<TypeItem> future =
                Navigator.push(context, MaterialPageRoute(builder: (context) {
              return InputScreen();
            }));
            future.then((item) => _updateList(item));
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

  void _updateList(TypeItem item) {
    Future.delayed(Duration(seconds: 1), () {
      debugPrint('$item');
      if (item != null) {
        setState(() {
          _listItems.add(item);
        });
      }
    });
  }
}
