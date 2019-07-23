
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Sateful App Example',
      home: FavoriteCity(),
      
    )
  );
}
 class FavoriteCity extends StatefulWidget{
    @override
    State<StatefulWidget> createState() {
      return  _FavoriteCityState();
    }
  }

class _FavoriteCityState extends State<FavoriteCity>{
  String nameCity ='';
  var _currencies = ['Rupees','Dollar','Pounds','other'];
  var _currentItemSelected = 'Rupees';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Stateful App Example'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              TextField(
                onChanged: (String userInput){
                  setState(() {
                    nameCity= userInput;
                  });
                },
              ),
              DropdownButton<String>(
                items: _currencies.map((String dropDownStringItem){
                  return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                    child: Text(dropDownStringItem),
                  );
                }).toList(),
                onChanged: (String newValueSelected){
                  _0nDropDownItemSelected (newValueSelected);

                },
                value: _currentItemSelected,
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child:  Text(
                  'Your bext city is $nameCity',
                  style: TextStyle(fontSize: 20.0),
                ),
              )
            ],
          ),
        ),
      );
  }
  void _0nDropDownItemSelected(String newValueSelected){
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }

}

