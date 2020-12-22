import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:morango_app/mix_icons.dart';
import 'package:morango_app/widgets/app_bar.dart';
import 'package:morango_app/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: PreferredSize(
        child: Appbar(),
        preferredSize: Size.fromHeight(50),
      ),
      backgroundColor: Color.fromRGBO(255,166,166,1),
      body:SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(10, 25, 0, 10),
                child: Text("Receitas da semana",
                  textAlign: TextAlign.start,

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,

                  ),),
              ),
              SizedBox(
                height: 160,
                width: 240,
                child: Card(
                    child: Column(children: [
                      Image(image: AssetImage("images/Bolo-de-Chocolate-Cremoso.jpg")),
                      RichText(
                        text: TextSpan(text: "Peca: ", children: <TextSpan>[
                          TextSpan(
                            text: "5.0",
                            style: TextStyle(color: Colors.pink[100]),
                          )
                        ]),
                      ),
                      RichText(
                        text: TextSpan(text: "Peca: ", children: <TextSpan>[
                          TextSpan(
                            text: "5.0",
                            style: TextStyle(color: Colors.pink[100]),
                          )
                        ]),
                      ),
                    ])),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(255,144,144,1),
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.white,size: 35,),
              backgroundColor: Color.fromRGBO(255,144,144,1),
              title: Text("Home",style: TextStyle(color: Colors.white,fontSize: 0),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Mix.batedeira,color: Colors.white,size: 35,),
              backgroundColor: Color.fromRGBO(255,144,144,1),
              title: Text("Mix",style: TextStyle(color: Colors.white,fontSize: 0),)
          ),
        ],
      ),
    );
  }
}
