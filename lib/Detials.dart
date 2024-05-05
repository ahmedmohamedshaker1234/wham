  import 'package:flutter/material.dart';

  class Detials extends StatefulWidget {
    final data;
    const Detials({super.key, this.data});
    @override
    State<Detials> createState() => Mydetials();
  }

  class Mydetials extends State<Detials> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
            iconSize: 25,
            selectedItemColor: Colors.orange,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined), label: "Market"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined), label: "ME"),
            ]),
        appBar: AppBar(
            backgroundColor: Colors.grey[200],
            title: 
          const  Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              Icon(Icons.shopping_cart_outlined),
              Text(
              " Market",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )]
            ),
            ),
        body: ListView(
          children: [
            Container(height: 400, child: Image.asset(widget.data["imagename"])),
            Container(
              child: Text(
                widget.data["title"],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  widget.data["subtitle"],
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                )),
            Container(
              
                padding: EdgeInsets.only(top: 10,bottom: 20),
                child: Text(
                  widget.data["price"],
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.orange,
                  ),
                  textAlign: TextAlign.center,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("color: "),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Grey"),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Black"),
              ],
            ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text("Size    34   35   40   41", textAlign: TextAlign.center
                  ,style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),)), 

                    Container(
                      padding: EdgeInsets.only(top: 20),
                      margin: EdgeInsets.symmetric(horizontal:60),
                      child: MaterialButton(
                                        color: Colors.black,
                                        textColor: Colors.white,  
                        onPressed: (){},
                                        child: Text("ADD TO CARD"),),
                    ),
                  
          ],
        ),
      );
    }
  }
