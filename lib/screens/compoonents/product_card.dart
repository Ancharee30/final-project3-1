import 'package:flutter/material.dart';

import '../../menu/cons.dart';
import '../../models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.itemIndex,
    required this.product,
  });
  final int itemIndex;
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      // color: Colors.red,
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 136,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: kBlueColor,
              boxShadow: [kDefaultShadow],
            ),
            child: Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 244, 201),
                borderRadius: BorderRadius.circular(22),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 172,
              width: 375,
              child: Image.asset(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: 136,
              width: size.width - 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 1.5,
                      vertical: kDefaultPadding / 4,
                    ),
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(22),
                        topRight: Radius.circular(22),
                      ),
                    ),
                    child: Text(
                      "${product.price} \฿",
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
