import 'package:flutter/material.dart';

class CardMenu extends StatefulWidget {
  final String url ;
  final String titre ;

  const CardMenu({Key key, this.url, this.titre}) : super(key: key); 
  @override
  _CardMenuState createState() => _CardMenuState();
}

class _CardMenuState extends State<CardMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.url))),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 35,
                child: Center(
                  child: Text(
                    widget.titre,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
