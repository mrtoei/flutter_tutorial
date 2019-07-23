import 'dart:developer';

import 'package:flutter/material.dart';
// import './app_screens/home.dart';
void main() {
  runApp(
    MaterialApp(
      title: 'Exploring UI Widgets',
      home: Scaffold(
        appBar: AppBar(title: Text('Basic List View'),),
        body: getListView(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            debugPrint('FAB clicked');
          },
          child: Icon(Icons.add),
          tooltip: 'Add One More Item',
        ),
      )
    )
  );
}
void showSnackBar(BuildContext context, String item){
  var snackBar = SnackBar(
    content: Text("You just tapped $item"),
    action: SnackBarAction(
      label: 'UNDO',
      onPressed: (){
        debugPrint('Performing dummy UNDO operation');
      },
    ),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}
List getListElements(){
  var item = List.generate(1000, (counter)=>"Item $counter");
  return item;
}
Widget getListView(){
  // var listView = ListView(
  //   children: <Widget>[
  //     ListTile(
  //       leading: Icon(Icons.landscape),
  //       title: Text('Landscape'),
  //       subtitle: Text('Beautiful View!'),
  //       trailing: Icon(Icons.wb_sunny),
  //       onTap: (){
  //         debugPrint('Landscape tapped');
  //       },
  //     ),
  //     ListTile(
  //       leading: Icon(Icons.laptop_chromebook),
  //       title: Text('Windows'),
  //     ),
  //      ListTile(
  //       leading: Icon(Icons.phone),
  //       title: Text('Phone'),
  //     ),
  //     Text("Yet another element in list"),
  //     Container(color:  Colors.red,height: 50.0,)
  //   ],
  // );
  
  // return listView;
  var listItems = getListElements();
  var listView = ListView.builder(
    itemBuilder: (context, index){
      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(listItems[index]),
        onTap: (){
          // debugPrint('${listItems[index]} was tapped');
          showSnackBar(context,listItems[index]);
        },
      );
    }
  );
  return listView;
}