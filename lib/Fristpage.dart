import 'package:finalistta/homepage.dart';
import 'package:flutter/material.dart';

class Fristpage extends StatefulWidget{
const Fristpage ({super.key});

 @override 
 State<Fristpage> createState()=> Myfristpage();
}

class Myfristpage extends State<Fristpage>{

  @override
  Widget build(BuildContext context) {
  return Scaffold( 
    backgroundColor: Colors.grey[190],
    body: Container(
      child: Column(
        children: [
          Container(
            height: 400,
            child: Image.asset("images/background.jpg")),
             Container(

              padding: EdgeInsets.only(top: 50,right: 70,left: 10),
              child: Text("EXPLORE \THE BEST\ PRODUCTS" ,style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),),
            ), 
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: 
                  MaterialButton(onPressed: (){
                    Navigator.of(context).push((MaterialPageRoute(builder:(context)=> homepage())));

                  },child: Text("Next",style: TextStyle(color: Colors.white,fontFamily: 'jersy'),),),
                )
                
              ],
            )     
        ],
      ),
    ),

  );
  }
}