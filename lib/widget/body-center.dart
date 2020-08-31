import 'package:ddd/utils/colors.dart';
import 'package:ddd/widget/card-menu.dart';
import 'package:flutter/material.dart';

class BodyCenter extends StatefulWidget {
  @override
  _BodyCenterState createState() => _BodyCenterState();
}

class _BodyCenterState extends State<BodyCenter> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: MediaQuery.of(context).size.height * 0.25,
        left: MediaQuery.of(context).size.width * 0.05,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.52,
          width: MediaQuery.of(context).size.width * 0.9,
          //color: cinquiemeColor,
          child: Column(
            children: <Widget>[
              Container(
                height: 25,
                //color: Colors.orange,
                width: MediaQuery.of(context).size.width*0.8,
                child: Text('Transport' , style: TextStyle(
                  color: premierColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                ),),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.52 - 50 ,
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    CardMenu(url: 'assets/images/bus.png', titre: 'Bus',),
                    CardMenu(url: 'assets/images/train.png', titre: 'Train',),
                    CardMenu(url: 'assets/images/ship.png', titre: 'Bateau',),
                    CardMenu(url: 'assets/images/pickup-car.png', titre: 'Taxi',),
                    
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
