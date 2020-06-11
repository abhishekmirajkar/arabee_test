import 'package:flutter/material.dart';
class annualSubscriptionService extends StatefulWidget {
  @override
  _annualSubscriptionServiceState createState() => _annualSubscriptionServiceState();
}

class _annualSubscriptionServiceState extends State<annualSubscriptionService> {
  double annualSubscriptionBaseprice = 350.0;
  double annualPricePerAdditionalChildprice = 170.0;

  String currencyType = "AED";
  String updatedAmount = "350.0";
  int counter = 1;

  removeadditionalchild() {
    annualSubscriptionBaseprice =
        annualSubscriptionBaseprice - 170.0;
    counter= counter -1;


    if(annualSubscriptionBaseprice <350){
      annualSubscriptionBaseprice = 350.0;
      updatedAmount = "350.0";
      counter = 1;
      return updatedAmount;
    }
    updatedAmount = annualSubscriptionBaseprice.toString();
    return updatedAmount;
  }

  addadditionalchild() {
    annualSubscriptionBaseprice =
        annualSubscriptionBaseprice + 170.0;
    //print(annualSubscriptionBaseprice);
    counter = counter + 1;
    updatedAmount = annualSubscriptionBaseprice.toString();

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
          SizedBox(height: MediaQuery.of(context).size.height/30,),
          Row(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                    color: Color(0XFFFB8B42),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5)),
                  ),
                  height: 45,
                  width: 130,
                  child: Center(
                    child: Text(
                      "Popular",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ))
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height/20,),
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
            Text(currencyType+"  ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
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

          Text("Additional Child AED 170 \/ Year",style: TextStyle(fontSize: 16,color: Color(0xff1C4B87),fontWeight: FontWeight.bold),),
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
