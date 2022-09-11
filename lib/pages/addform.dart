import 'package:flutter/material.dart';
import 'package:day02/pages/stockform.dart';
import 'package:day02/model/stock.dart';
import '../networks/inventoryAPI.dart';

class AddForm extends StatefulWidget {
  const AddForm({Key? key}) : super(key: key);

  @override
  _AddFormState createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  Stock stock = Stock();
  InventoryAPI inventoryAPI = InventoryAPI();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Stock'),
      ),
      body: StockForm(submit: _submit, stock: stock),
    );
  }

  _submit(Stock stock) async {
    Stock? res = await inventoryAPI.createStock(stock: stock);
    if (res == null) {
      print("Something went wrong");
    } else {
      print("Update Stock Complete");
      Navigator.pop(context);
    }
  }
}
