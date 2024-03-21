import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNewProduct extends StatefulWidget {
  @override
  State<AddNewProduct> createState() => _AddNewProductState();
}

class _AddNewProductState extends State<AddNewProduct> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new product'),
      ),
      body:
      const Padding(padding:EdgeInsets.all(20),
        child: Column(
          
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: ('Titel')
              ),
            ),
            SizedBox(height: 8,),
            TextField(
              decoration: InputDecoration(
                  hintText: ('Titel')
              ),
            ),
            SizedBox(height: 8,),
            TextField(
              decoration: InputDecoration(
                  hintText: ('Titel')
              ),
            ),
            SizedBox(height: 8,),
            TextField(
              decoration: InputDecoration(
                  hintText: ('Titel')
              ),
            ),
            SizedBox(height: 8,),
            TextField(
              decoration: InputDecoration(
                  hintText: ('Titel')
              ),
            ),
            SizedBox(height: 8,)

          ],

        ),
      ),

    );
  }
}
