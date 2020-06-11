import 'package:arabeetask/widgets/payment_widget.dart';
import 'package:flutter/material.dart';

class payment extends StatefulWidget {
  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> with SingleTickerProviderStateMixin{
  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0XFF054A8C),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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



          paymentWidget(),


        ],
      ),
    );
  }
}


