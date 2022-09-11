import 'package:day02/pages/stockform.dart';

import 'package:flutter/material.dart';

import '../model/stock.dart';
import '../networks/inventoryAPI.dart';

class EditForm extends StatefulWidget {
  const EditForm({Key? key}) : super(key: key);

  @override
  _EditFormState createState() => _EditFormState();
}

class _EditFormState extends State<EditForm> {
  InventoryAPI inventoryAPI = InventoryAPI();
  @override
  Widget build(BuildContext context) {
    Stock stock = ModalRoute.of(context)!.settings.arguments as Stock;
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Stock'),
      ),
      body: Column(
        children: [
          StockForm(
            stock: stock,
            submit: _submit,
          ),
          ListTile(
            title: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red),
              onPressed: () => delete(stock.id),
              child: Text('Delete'),
            ),
          )
        ],
      ),
    );
  }

  _submit(Stock stock) async {
    Stock? res = await inventoryAPI.updateStock(stock: stock);
    if (res == null) {
      print("Something went wrong");
    } else {
      print("Update Stock Complete");
      Navigator.pop(context);
    }
  }

  delete(int? id) async {
    InventoryAPI inventoryAPI = InventoryAPI();
    String? msg = await inventoryAPI.deleteStock(id: id!);
    Navigator.pop(context);
  }
}
