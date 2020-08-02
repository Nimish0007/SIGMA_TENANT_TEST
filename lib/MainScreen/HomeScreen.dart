import 'package:flutter/material.dart';
import 'package:sigma_test_ui/Helpers/help.dart';

import 'ApiPage.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //1st card
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/3.2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 3,
                      color: whiteColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 20),
                            child: Container(
                              width: 85,
                              height: 35,
                              child: Card(
                                color: whiteColor,
                                elevation: 7,
                                child: Center(
                                  child: Text("COVID-19",style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.purple,
                                      fontFamily: "OpenSans",
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 20),
                            child: Text("In this hour of predicament,it is essential to\n"
                                "stay informed about quarantine and isolation\n"
                                "centers in your neighborhood. Find\n"
                                "dependable centers near you in case of\n"
                                "emergencies with this tag.",style: TextStyle(
                              fontSize:19,
                              fontFamily: "Open Sans"
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 10),
                            child: Text("Spaces",style: TextStyle(
                              color: maroon,
                              fontFamily: "Open Sans"
                            ),),
                          ),


                        ],
                      ),

                    ),
                  ),
                ),
                //2nd Card
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/3.2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 3,
                      color: whiteColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 20),
                            child: Container(
                              width: 140,
                              height: 30,
                              child: Card(
                                color: whiteColor,
                                elevation: 7,
                                child: Center(
                                  child: Text("TRAINING ROOMS",style: TextStyle(
                                      fontSize: 16,
                                      color: maroon,
                                      fontFamily: "Open Sans",
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 10),
                            child: Text("Spaces are being added with this tag. Please\n"
                                "come back later to check more",style: TextStyle(
                                fontSize:17,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Open Sans"
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 10),
                            child: Text("Procure conference rooms for ceremonies and \n"
                                "meetings by the hour, or utilize them as\n"
                                "training rooms at locations closest to your \n"
                                "interests with this tag",style: TextStyle(
                                fontSize:19,
                                fontFamily: "Open Sans"
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 10),
                            child: Text("Spaces",style: TextStyle(
                              color: maroon,
                              fontFamily: "Open Sans"
                            ),),
                          ),


                        ],
                      ),

                    ),
                  ),
                ),
                //3rd card
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/3.2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 3,
                      color: whiteColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 20),
                            child: Container(
                              width: 135,
                              height: 30,
                              child: Card(
                                color: whiteColor,
                                elevation: 7,
                                child: Center(
                                  child: Text("PHOTO SHOOT",style: TextStyle(
                                      fontSize: 16,
                                      color: maroon,
                                      fontFamily: "Open Sans",
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 10),
                            child: Text("Spaces are being added with this tag. Please\n"
                                "come back later to check more",style: TextStyle(
                                fontSize:17,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Open Sans"
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 10),
                            child: Text("Find chic spaces harmonizing with the\n"
                                "aesthetic of your photoshoots. Find Ideal\n"
                                "locations suiting your needs in close range with\n"
                                "this range.",style: TextStyle(
                                fontSize:19,
                                fontFamily: "Open Sans"
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 10),
                            child: Text("Spaces",style: TextStyle(
                              color: maroon,
                              fontFamily: "Open Sans"

                            ),),
                          ),


                        ],
                      ),

                    ),
                  ),
                ),
          InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 50,bottom: 10),
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.purple
              ),
              padding: const EdgeInsets.all(10.0),
              child:
               Text('GET API DATA', style: TextStyle(fontSize: 20,color: whiteColor)),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ApiPage()));
            },
          ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
