import 'package:finalistta/detials.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const homepage());
}

class homepage extends StatefulWidget {
  const homepage({super.key});
  @override
  State<homepage> createState() => Myhomepage();
}

class Myhomepage extends State<homepage> {
  List items = [
    {
      "imagename": "images/t-shirt.jpg",
      "title": "t-shirt1",
      "subtitle": "description",
      "price": "550\$"
    },
    {
      "imagename": "images/t-shirt6.jpg",
      "title": "t-shirt2",
      "subtitle": "description",
      "price": "550\$"
    },
    {
      "imagename": "images/t-shirt2.jpg",
      "title": "t-shirt3",
      "subtitle": "description",
      "price": "550\$"
    },
    {
      "imagename": "images/t-shirt3.jpg",
      "title": "t-shirt4",
      "subtitle": "description",
      "price": "550\$"
    },
    {
      "imagename": "images/t-shirt4.jpg",
      "title": "t-shirt5",
      "subtitle": "description",
      "price": "550\$"
    },
    {
      "imagename": "images/t-shirt6.jpg",
      "title": "t-shirt5",
      "subtitle": "description",
      "price": "550\$"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
          iconSize: 25,
          selectedItemColor: Colors.orange,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: "Market"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: "Me"),
          ]),
      body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(children: [
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "search",
                    fillColor: Colors.grey[250],
                    filled: true,
                  ),
                )),
                const Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.menu),
                )
              ],
            ),
            Container(
              height: 30,
            ),
            const Text(
              "Catagiors",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(height: 20),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(200),
                        ),
                        child: Image.asset(
                          "images/imageman.jpg",
                          width: 41,
                        ),
                        padding: EdgeInsets.all(15),
                      ),
                      Text(
                        "Men",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(200),
                        ),
                        child: Image.asset(
                          "images/imagewoman1.jpg",
                          width: 35,
                        ),
                        padding: EdgeInsets.all(15),
                      ),
                      Text(
                        "Women",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(200),
                        ),
                        child: Image.asset(
                          "images/imagekid.jpg",
                          width: 48,
                        ),
                        padding: EdgeInsets.all(15),
                      ),
                      Text(
                        "Kides",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(200),
                        ),
                        child: Image.asset(
                          "images/imageacc.jpg",
                          width: 44,
                        ),
                        padding: EdgeInsets.all(15),
                      ),
                      Text(
                        "Accessories",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(200),
                        ),
                        child: Image.asset(
                          "images/imagebag.jpg",
                          width: 44,
                        ),
                        padding: EdgeInsets.all(15),
                      ),
                      Text(
                        "Bages",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(200),
                        ),
                        child: Image.asset(
                          "images/imageshoe.jpg",
                          width: 44,
                        ),
                        padding: EdgeInsets.all(15),
                      ),
                      Text(
                        "Shoes",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                "Super Deals",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            GridView.builder(
                itemCount: items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 235),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Detials(data: items[i])));
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 300,
                            color: Colors.grey[100],
                            child: Image.asset(
                              items[i]["imagename"],
                              height: 160,
                            ),
                          ),
                          Text(
                            items[i]["title"],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(items[i]["subtitle"],
                              style: TextStyle(color: Colors.grey[150])),
                          Text(items[i]["price"],
                              style: TextStyle(color: Colors.red)),
                        ],
                      ),
                    ),
                  );
                })
          ])),
    );
  }
}
