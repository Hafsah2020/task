import 'package:flutter/material.dart';
import 'onboarding.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage() : super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Text(
            'Welcome',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => OnboardingScreen()));
        },
        label: Text('Start'),
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
      ),
    );
  }
}
