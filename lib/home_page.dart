import 'package:flutter/material.dart';
import 'package:peoms_mood_to_colour/MyWebView.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("Images/logo1.jpg", width: 300,),
                SizedBox(height: 60.0,),
                Text("Check it Out", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 14.0
                ),),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => MyWebView(
                          title: "Peom's Mood To Colour",
                          selectedUrl: "http://moodtocolour.herokuapp.com/",
                        )));

                  },
                  child:
                  Icon(Icons.arrow_forward),
                )
              ],
            )
        )
    );
  }
}
