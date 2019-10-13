import 'package:flutter/material.dart';
import 'package:flutter_lab/models/TypeItem.dart';

class ItemList extends StatelessWidget {
  final TypeItem item;

  const ItemList(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.accessibility),
        title: Text(item.itemName),
        subtitle: Text(item.subtitleDouble.toString()),
      ),
    );
  }
}