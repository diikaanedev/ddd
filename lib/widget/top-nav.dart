import 'package:ddd/utils/colors.dart';
import 'package:flutter/material.dart';

class TopNav extends StatefulWidget {
  @override
  _TopNavState createState() => _TopNavState();
}

class _TopNavState extends State<TopNav> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        child: Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            //color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    //color: Colors.green,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: Center(
                            child: Text('Ville' , style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: Center(child: Text('DAKAR' ,style: TextStyle(
                            color: Colors.white , 
                            fontWeight: FontWeight.bold , 
                            fontSize: 20
                          ),)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    //color: Colors.blue,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          //color: Colors.red,
                          child: Center(
                            child: Text('Porte Feuille' , 
                              textScaleFactor: 1.5,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.white
                            ),),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.03 ,
                          //color: Colors.orange,
                          child: Text('15000 FCFA' , style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700
                          ),),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: quatriemeColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
    ));
  }
}
