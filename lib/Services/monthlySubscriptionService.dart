import 'package:flutter/material.dart';
class monthlySubscriptionService extends StatefulWidget {
  @override
  _monthlySubscriptionServiceState createState() => _monthlySubscriptionServiceState();
}

class _monthlySubscriptionServiceState extends State<monthlySubscriptionService> {

  double monthlySubscriptionBaseprice = 35.0;
  double monthlyPricePerAdditionalChildprice = 17.0;

  String currencyType = "AED";
  String updatedAmount = "35.0";
  int counter = 1;
  removeadditionalchild() {
    monthlySubscriptionBaseprice =
        monthlySubscriptionBaseprice - 17.0;
    counter= counter -1;

    if(monthlySubscriptionBaseprice <35){
      monthlySubscriptionBaseprice = 35.0;
      updatedAmount = "35.0";  counter= 1;
      return updatedAmount;
    }
    updatedAmount = monthlySubscriptionBaseprice.toString();
    return updatedAmount;
  }

  addadditionalchild() {
    monthlySubscriptionBaseprice =
        monthlySubscriptionBaseprice + 17.0;
    //print(annualSubscriptionBaseprice);

    updatedAmount = monthlySubscriptionBaseprice.toString();
    counter= counter +1;

    return updatedAmount;
  }
  @override
  Widget build(BuildContext context) {
    return Container(


      decoration: BoxDecoration(
        border: Border.all(
            width: 1,
            color: Colors.grey[400],
            style: BorderStyle.solid),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15)),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height/12,),

          SizedBox(height: MediaQuery.of(context).size.height/20,),
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(currencyType+"  ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              //The Text Box Automatically Adds Up Padding, We Can Use Stack And Alight Then Perfectly
              Text(updatedAmount,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,height:0.2),),
              Text("  \/Yearly",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ],),
          SizedBox(height: MediaQuery.of(context).size.height/20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:23.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("Number of Children",style: TextStyle(fontSize: 16,color: Color(0xff1C4B87),fontWeight: FontWeight.bold),),
              ],),
          ),

          SizedBox(height: MediaQuery.of(context).size.height/50,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:23.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(""),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("$counter"),
                  ],
                ),






                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: ButtonTheme(
                        minWidth: 10,
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: Color(0xffE5F0FF),
                            onPressed: () {
                              var amt = removeadditionalchild();
                              setState(() {
                                updatedAmount =amt;
                              });
                            },
                            //Used Text As Icon Widget has default padding, Hence used Text Widget and used fontsize to make it smaller

                            child: Text("-",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),)
                        ),
                      ),
                    ),

                    ButtonTheme(
                      minWidth: 10,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Color(0xff1C4B87),
                          onPressed: () {
                            var amt = addadditionalchild();
                            setState(() {
                              updatedAmount =amt;
                            });
                          },
                          //Used Text As Icon Widget has default padding, Hence used Text Widget and used fontsize to make it smaller
                          child: Text("+",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w300),)
                      ),
                    ),
                  ],
                ),



              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal:23.0),
            child: Divider(
              color: Colors.grey[700],
              height: 2,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/30,),

          Text("Additional Child AED 17 \/ Year",style: TextStyle(fontSize: 16,color: Color(0xff1C4B87),fontWeight: FontWeight.bold),),
          SizedBox(height: MediaQuery.of(context).size.height/20,),

          ButtonTheme(
            minWidth: MediaQuery.of(context).size.width/1.8,
            height: 50,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28.0),
              ),
              onPressed: () {

              },
              color: Color(0xff1C4B87),
              child: Text(
                "BUY NOW",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),



        ],
      ),
    );
  }
}
