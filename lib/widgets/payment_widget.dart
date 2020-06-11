import 'package:arabeetask/Services/annualSubscriptionService.dart';
import 'package:arabeetask/Services/monthlySubscriptionService.dart';
import 'package:flutter/material.dart';

class paymentWidget extends StatefulWidget {
  @override
  _paymentWidgetState createState() => _paymentWidgetState();
}

class _paymentWidgetState extends State<paymentWidget>
    with SingleTickerProviderStateMixin {
  TabController _controller;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      //height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Text(
                    "Choose Plan",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: Colors.grey[400], style: BorderStyle.solid),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15), topLeft: Radius.circular(15)),
                  ),
                  height: MediaQuery.of(context).size.height / 10,
                  //decoration: new BoxDecoration(color: Theme.of(context).primaryColor),
                  child: new TabBar(
                    unselectedLabelColor: Color(0XFF054A8C),
                    controller: _controller,
                    indicator: BoxDecoration(
                      color: Color(0XFF054A8C),
                    ),
                    tabs: [
                      new Tab(
                        child: Center(
                          child: Text('Annual Subscription'),
                        ),
                      ),
                      new Tab(
                        child: Center(
                          child: Text('Monthly Subscription'),
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height / 1.74,
                  child: new TabBarView(
                    controller: _controller,
                    children: <Widget>[
                      annualSubscriptionService(),
                      monthlySubscriptionService(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
