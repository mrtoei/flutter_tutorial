import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          color: Colors.deepPurple,
          // margin: EdgeInsets.only(left: 35.0,top: 50.0),
          child: Column(
            children: <Widget>[
               Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    'Spice Jet',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )),
                  Expanded(
                      child: Text(
                    'From Mumbi to Bang via New Delhi',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )),
                ],
              ),
              FightImageAsset(),
              FlightBookButton(),
            ],
          )),
    );
  }
}

class FightImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/1.png');
    Image image =  Image(image: assetImage, width:200, height: 100,);
    return Container(child: image,);
  }
}

class FlightBookButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
        color: Colors.deepOrange,
        child: Text(
          "Book Your Flight",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700
          ),
          ),
        elevation: 6.0,
        onPressed: () {
          bookFlight(context);
        }
      
      ),
    );
  }
}
void bookFlight(BuildContext context){
  var alertDialog=AlertDialog(
    title: Text("Flight Booked Successfully"),
    content: Text("Have a pleasant flight"),
  );
  showDialog(
    context: context,
    builder: (BuildContext context){
      return alertDialog;
    }
  );
}