import 'package:flutter/material.dart';
import 'package:task/data/data.dart';
import '../widgets/widgets.dart';
import '../screen/screens.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen() : super();
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.green.shade900,
        body: Padding(
          padding: EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 400,
                color: Colors.transparent,
                child: ListView(
                    physics: PageScrollPhysics(),
                    //shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Card1(images: onboardImages[0]),
                      Card1(images: onboardImages[1]),
                      Card1(images: onboardImages[2]),
                      Container(
                        color: Colors.green,
                        constraints: BoxConstraints.expand(
                            height: 350,
                            width:
                                400), //important to include size of individual elements to make horizontal listview show
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    Text(
                      'Welcome \n to SpotFinder',
                      style: Theme.of(context).textTheme.headline2,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 32),
                    Text(
                      'Search for unique spots in your nearest \n '
                      'location and explore new places!',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 32),
                    Button1(title: 'Get Started', page: ExploreRestaurant()),
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
