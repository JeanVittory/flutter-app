import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/img_main.png"),
            Column(
              children: [
                Text("Job Hunting", style: Theme.of(context).textTheme.headline1),
                Text("made easy", style: Theme.of(context).textTheme.headline2),
              ],
            ),
            MaterialButton(
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              elevation: 10.0,
              minWidth: 170.0,
              height: 50.0,
              onPressed: () => {},
              child: const Text("Get Started", style: TextStyle(color: Colors.white, fontSize: 20),),
            )
          ],
        ),
      )
    );
  }
}
