import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/menu/cons.dart';

import '../../calculate.dart';
import '../../models/product.dart';
import '../screens/compoonents/product_card.dart';
//import 'product_card.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 186, 186, 186),
      appBar: AppBar(
        title: Text("NEW CARS"),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.calculate),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => Calculate(
                              title: '',
                            ))));
              }),
        ],
      ),
      body: Body(),
    );
  }
}
/*AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text("NEW CARS"),
      centerTitle: true,
    );
  }*/

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //  SearchBox(),

        SizedBox(height: kDefaultPadding / 2),
        Expanded(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) => ProductCard(
                  itemIndex: index,
                  product: products[index],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
