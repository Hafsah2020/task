import 'package:flutter/material.dart';
import '../data/data.dart';

class CafeProductsCard extends StatelessWidget {
  final CafeProducts cafeProducts;
  const CafeProductsCard({Key? key, required this.cafeProducts})
      : super(key: key);
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.05,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(width: 0.1, color: Colors.black),
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(cafeProducts.name),
            Row(
              children: [
                Text(
                  '\$${cafeProducts.price}',
                ),
                Ink(
                  decoration: ShapeDecoration(
                      shape: CircleBorder(side: BorderSide(width: 0.1))),
                  child: Center(
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Center(
                        child: Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
