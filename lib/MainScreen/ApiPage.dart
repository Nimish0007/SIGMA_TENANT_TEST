import 'dart:async';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';


class ApiPage extends StatefulWidget {
  @override
  _ApiPageState createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {

  var response;

  void getApiData() async {
    response = await Dio().get("https://sigmatenant.ml/mobile/tags");
//  print(response.data["tags"][1]["_id"]);
//print(response.data["tags"].length);

  }
 @override
  void initState() {
    // TODO: implement initState
   super.initState();
   Timer(Duration(seconds: 2), () {
     setState(() {
       getApiData();
     });
   }
   );
  }




    @override
  Widget build(BuildContext context) {
    getApiData();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("API DATA",style: TextStyle(color: Colors.orange),),
        ),
        body: response!=null?_datalist():Center(child: Text("Retrieving Data please wait...",style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.bold,
          fontFamily: "Open Sans"
        ),),),
      ),
    );
  }

  Widget _datalist() {
   if(response!=null) {
      getApiData();
     return ListView.builder(
       itemCount: response.data["tags"].length,
       itemBuilder: (context,i) {

         return Container(
           height: 270,
           child: Card(
             color: Color.fromRGBO(6, 26, 67, 1),
             child: new ListTile(
               title: Text("ID:  "+response.data['tags'][i]['_id'],style: TextStyle(
                 fontFamily: "Open Sans",
                 fontWeight: FontWeight.bold,
                 fontSize: 25,
                 color: Colors.white
               ),),
               subtitle: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Padding(
                     padding: EdgeInsets.only(top: 20),
                   ),
                   Text("Title: "+response.data['tags'][i]['title'],style: TextStyle(
                       fontFamily: "Open Sans",
                       fontWeight: FontWeight.bold,
                       fontSize: 21,
                       color: Colors.white
                   ),),
                   Text("Display Name: "+response.data['tags'][i]['displayName'],style: TextStyle(
                       fontFamily: "Open Sans",
                       fontWeight: FontWeight.bold,
                       fontSize: 21,
                       color: Colors.white
                   ),),
                   Text("Description: "+response.data['tags'][i]['description'],style: TextStyle(
                       fontFamily: "Open Sans",
                       fontWeight: FontWeight.bold,
                       fontSize: 21,
                       color: Colors.white
                   ),),
                 ],
               ),
             ),
           ),
         );
       }
     );

   }
  }


}
