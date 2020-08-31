import 'package:ddd/utils/colors.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: MediaQuery.of(context).size.width * 0.1,
        child: Card(
          elevation: 20,
          color: quatriemeColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                color: quatriemeColor, borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  //color: Colors.blue,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.home,
                            size: 33,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                          Container(
                            height: 50,
                            //color: Colors.orange,
                            child: Center(
                              child: Text('HOME' ,style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                          )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  //color: Colors.blue,
                  child: IconButton(
                      icon: Icon(
                        Icons.bookmark,
                        size: 33,
                        color: premierColor,
                      ),
                      onPressed: () {}),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  //color: Colors.blue,
                  child: IconButton(
                      icon: Icon(
                        Icons.person,
                        size: 33,
                        color: premierColor,
                      ),
                      onPressed: () {}),
                ),
              ],
            ),
          ),
        ));
  }
}
