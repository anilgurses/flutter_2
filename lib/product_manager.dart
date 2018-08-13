import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(this.startingProduct){
    print("[Products Widget Constructor]");
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];


  @override
  void initState() {
      // TODO: implement initState
    _products.add(widget.startingProduct);

    super.initState();
  }

  void _addProduct(String product) {
    setState(() {
                _products.add('Advanced Food Tester');
              });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct),
        ),
      Expanded(child:Products(_products))
      ],
    );
  }
}
