import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task/data/data.dart';
import 'package:task/widgets/widgets.dart';

class CafeScreen extends StatelessWidget {
  final CafesList cafe;

  const CafeScreen({Key? key, required this.cafe}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding:
              const EdgeInsets.only(right: 0, bottom: 0, left: 16, top: 16),
          child: Ink(
            decoration: ShapeDecoration(
                shape: CircleBorder(side: BorderSide(width: 0.1))),
            child: Center(
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: Center(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding:
                const EdgeInsets.only(right: 0, bottom: 0, left: 16, top: 16),
            child: Ink(
              decoration: ShapeDecoration(
                  shape: CircleBorder(side: BorderSide(width: 0.1))),
              child: IconButton(
                icon: Center(
                    child: Icon(Icons.favorite_border_rounded,
                        color: Colors.black)),
                onPressed: () {},
              ),
            ),
          ),
          //Spacer(),
          Padding(
            padding:
                const EdgeInsets.only(right: 0, bottom: 0, left: 4, top: 16),
            child: Ink(
              decoration: ShapeDecoration(
                  shape: CircleBorder(side: BorderSide(width: 0.1))),
              child: IconButton(
                icon: Center(
                    child: Icon(Icons.upload_outlined, color: Colors.black)),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(cafe.image), fit: BoxFit.cover)),
                child: SizedBox(
                  height: size.height * 0.3,
                  width: size.width,
                ),
              ),
              //Spacer(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Expanded(
                    child: Text(
                      cafe.title,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  //Spacer(),
                  Text(
                    'See on a map',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'its an elongated low land on the earths surface.It is mostly found between mountains or on elevated lands usually with a stream running across it.'
                'It is one of the common landforms formed by the process of erosion.Valleys are of different shapes and '
                'this shapes vary depending on what agent of erosion shaped it and the number of times the land has been eroded and some other geological factors',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cafe.subtitle,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      //Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text(
                            '${cafe.ratings} (${cafe.noOfRatings})',
                            //textAlign: TextAlign.left,
                          )
                        ],
                      )
                    ],
                  ),
                  Ink(
                    decoration: ShapeDecoration(
                        shape: CircleBorder(side: BorderSide(width: 0.1))),
                    child: IconButton(
                      icon: Icon(Icons.phone),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: size.height * 0.23,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: Images.samples.length,
                  itemBuilder: (context, int index) {
                    return Container(
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(
                              Images.samples[index].image,
                            ),
                            fit: BoxFit.cover),
                      ),
                      child: SizedBox(
                        width: size.width * 0.1,
                      ),
                    );
                  },
                  separatorBuilder: (context, int index) {
                    return SizedBox(width: 20);
                  },
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Our Menu',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: size.height * 0.05,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: samples2.length,
                  itemBuilder: (context, int index) {
                    return Chip(label: Text(samples2[index]));
                  },
                  separatorBuilder: (context, int index) => SizedBox(
                    width: 16,
                  ),
                ),
              ),
              SizedBox(
                width: 200,
              ),
              ListView.separated(
                shrinkWrap: true,
                primary: false,
                itemCount: CafeProducts.sample.length,
                itemBuilder: (context, int index) {
                  return CafeProductsCard(
                      cafeProducts: CafeProducts.sample[index]);
                  /*return ListTile(
                    leading: Text(CafeProducts.sample[index].name),
                    trailing: Row(
                      children: [
                        Text('\$ ${CafeProducts.sample[index].price}'),
                        Ink(
                          decoration: ShapeDecoration(
                              shape:
                                  CircleBorder(side: BorderSide(width: 0.1))),
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
                    ),
                  );*/
                },
                separatorBuilder: (context, int index) {
                  return SizedBox(
                    height: size.height * 0.02,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
