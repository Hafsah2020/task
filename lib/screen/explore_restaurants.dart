import 'package:flutter/material.dart';
import 'package:task/screen/cafe_screen.dart';
import 'package:task/widgets/cafe_card.dart';
import '../data/data.dart';
import '../widgets/widgets.dart';

class ExploreRestaurant extends StatelessWidget {
  ExploreRestaurant() : super();
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      primary: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 40, left: 25, bottom: 0, right: 25),
            padding: EdgeInsets.only(top: 10, left: 15, bottom: 10, right: 15),
            height: size.height * 0.07,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.2),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                  ),
                ),
                Icon(Icons.search)
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Padding(
            padding: EdgeInsets.only(top: 0, left: 20, bottom: 0, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Warsaw, Poland'),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                          padding: EdgeInsets.all(0.2),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black)),
                          child: Icon(Icons.keyboard_arrow_down))
                    ],
                  ),
                  Row(
                    children: [
                      Text('Recommended'),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                          padding: EdgeInsets.all(0.2),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black)),
                          child: Icon(Icons.keyboard_arrow_down))
                    ],
                  ),
                ]),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 0, left: 20, bottom: 0, right: 20),
            child: Text(
              'Explore restaurants',
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 0, left: 30, bottom: 0, right: 30),
            child: SizedBox(
              height: size.height * 0.1,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: samples1.length,
                itemBuilder: (context, int index) {
                  return Tags(tag: samples1[index]);
                },
                separatorBuilder: (context, int index) {
                  return SizedBox(
                    width: 8,
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 0, left: 25, bottom: 0, right: 25),
            child: SizedBox(
              height: size.height * 0.3,
              width: size.width,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) => MaterialButton(
                      padding: EdgeInsets.all(2.5),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CafeScreen(
                                    cafe: CafesList.samples[index])));
                      },
                      child: CafeCard(detail: CafesList.samples[index])),
                  separatorBuilder: (context, int index) => SizedBox(
                        width: 16,
                      ),
                  itemCount: CafesList.samples.length),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 0, left: 25, bottom: 0, right: 25),
            child: SizedBox(
              height: size.height * 0.3,
              width: size.width,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) => MaterialButton(
                      padding: EdgeInsets.all(2.5),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CafeScreen(
                                    cafe: CafesList.samples[index])));
                      },
                      child: CafeCard(detail: CafesList.samples[index])),
                  separatorBuilder: (context, int index) => SizedBox(
                        width: 16,
                      ),
                  itemCount: CafesList.samples.length),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 0, left: 25, bottom: 0, right: 25),
            child: SizedBox(
              height: size.height * 0.3,
              width: size.width,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) => MaterialButton(
                      padding: EdgeInsets.all(2.5),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CafeScreen(
                                    cafe: CafesList.samples[index])));
                      },
                      child: CafeCard(detail: CafesList.samples[index])),
                  separatorBuilder: (context, int index) => SizedBox(
                        width: 16,
                      ),
                  itemCount: CafesList.samples.length),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 0, left: 25, bottom: 0, right: 25),
            child: SizedBox(
              height: size.height * 0.3,
              width: size.width,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) => MaterialButton(
                      padding: EdgeInsets.all(2.5),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CafeScreen(
                                    cafe: CafesList.samples[index])));
                      },
                      child: CafeCard(detail: CafesList.samples[index])),
                  separatorBuilder: (context, int index) => SizedBox(
                        width: 16,
                      ),
                  itemCount: CafesList.samples.length),
            ),
          ),
        ],
      ),
    ));
  }
}
