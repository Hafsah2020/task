import 'package:flutter/material.dart';
import '../data/data.dart';

class CafeCard extends StatelessWidget {
  final CafesList detail;
  CafeCard({required this.detail}) : super();
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      width: MediaQuery.of(context).size.width * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              flex: 6,
              child: ClipRRect(
                child: Image.asset(
                  detail.image,
                  fit: BoxFit.cover,
                  width: 300,
                  height: 300,
                ),
                borderRadius: BorderRadius.circular(35),
              )),
          //Expanded(child: SizedBox(height: 0.1)),
          FittedBox(
            fit: BoxFit.fitHeight,
            child: Text(
              detail.title,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          //Expanded(
          //child: SizedBox(height: 0.1,),),
          Align(
            alignment: Alignment.topLeft,
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Text(
                detail.subtitle,
                // textAlign: TextAlign.left,
                //style: Theme.of(context).textTheme.headline3,
              ),
            ),
          ),
          //Expanded(child: SizedBox(height: 0.1,),),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  '${detail.ratings} (${detail.noOfRatings})',
                  //textAlign: TextAlign.left,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
