import 'package:arabeetask/payment.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[],
            ),
            Image.asset(
              "assets/images/logo.png",
              width: MediaQuery.of(context).size.width / 2,
            ),
            Spacer(),
            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width/1.8,
              height: 40,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                onPressed: () {},
                color: Color(0XFF054A8C),
                child: Text(
                  "LOG IN",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Text("Don't Have Subscription?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20/*MediaQuery.of(context).size.width/20*/)),
            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width/1.8,
              height: 40,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => payment()),
                  );
                },
                color: Color(0XFFFB8B42),
                child: Text(
                  "BUY NOW",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Spacer(),
            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width/1.8,
              height: 40,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                onPressed: () {},
                color: Color(0XFF1F2F4A),
                child: Text(
                  "START FREE DEMO",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),
          ],
        ));
  }
}
