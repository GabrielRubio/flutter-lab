import 'package:flutter/material.dart';
import 'package:flutter_lab/components/CustomInput.dart';
import 'package:flutter_lab/models/TypeItem.dart';

class InputScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InputScreenState();
  }
}

class InputScreenState extends State<InputScreen> {
  final TextEditingController _controllerInput1 = TextEditingController();
  final TextEditingController _controllerInput2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Input Screen'),
        ),
        body: Builder(
          builder: (context) => SingleChildScrollView(
            child: Column(
              children: <Widget>[
                CustomInput(
                    controllerInput: _controllerInput1,
                    label: 'Input 1',
                    hint: '00'),
                CustomInput(
                    controllerInput: _controllerInput2,
                    label: 'Input 2',
                    hint: '00.00',
                    icon: Icons.account_balance),
                RaisedButton(
                  child: Text('Confirmar'),
                  onPressed: () => _onClickConfirmButton(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onClickConfirmButton(BuildContext context) {
    final String itemName = _controllerInput1.text;
    final double subTitleDouble = double.tryParse(_controllerInput2.text);
    if (subTitleDouble != null) {
      final item = TypeItem(itemName, subTitleDouble);
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('$item'),
        ),
      );
      Navigator.pop(context, item);
    }
  }
}