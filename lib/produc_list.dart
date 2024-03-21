//import 'dart:js_util';

import 'package:basic_rast/add_new_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum PopupMenuType { edit, delete }

class Produc_list extends StatefulWidget {
  @override
  State<Produc_list> createState() => _Produc_listState();
}

class _Produc_listState extends State<Produc_list> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text('product list'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1522648485144-849409408aee?q=80&w=1160&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          ),
          title: Text('product List'),
          subtitle: Wrap(
            spacing: 16,
            children: [
              Text("product code"),
              Text("product unit price"),
              Text("product total price"),
              Text("product quentity")
            ],
          ),
          trailing: PopupMenuButton<PopupMenuType>(
            onSelected: (selectedMenu) {
              print(selectedMenu);
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                  child: Row(
                children: [
                  Icon(Icons.edit),
                  SizedBox(
                    width: 10,
                  ),
                  Text('edit')
                ],
              )),
              PopupMenuItem(
                  child: Row(
                children: [
                  Icon(Icons.delete),
                  SizedBox(
                    width: 10,
                  ),
                  Text('delete')
                ],
              )),
            ],
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddNewProduct()),
          );
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
