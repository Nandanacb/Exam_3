import 'package:exam_exam/database.dart';
import 'package:exam_exam/details.dart';

import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 242, 242),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back),
                Spacer(),
                CircleAvatar(
                  radius: 15,
                  foregroundImage: AssetImage("assets/images/head.jpeg"),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Delicious food ready to ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text(
              "delivered for you",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 254, 254, 254)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 10),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 35,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.red),
                  child: Center(
                      child: Text(
                    "Burger",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
                ),
                SizedBox(width: 20),
                Container(
                  height: 35,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white),
                  child: Center(
                      child: Text(
                    "Pizza",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(183, 77, 70, 70)),
                  )),
                ),
                SizedBox(width: 20),
                Container(
                  height: 25,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white),
                  child: Center(
                      child: Text(
                    "Soups",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(183, 77, 70, 70)),
                  )),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Most Popular",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 800,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(9),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Detailspage(
                                                imagepath: Database
                                                    .myList[index]["image"],
                                                name: Database.myList[index]
                                                    ["name"])));
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    child: Image(
                                      image: AssetImage(
                                          Database.myList[index]["image"]),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(1),
                                child: Text(Database.myList[index]["name"],
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: const Color.fromARGB(
                                            255, 67, 65, 65))),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(1),
                                child: Text(
                                  Database.myList[index]["text"],
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: const Color.fromARGB(
                                          255, 88, 81, 81)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    Database.myList[index]["price"],
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.add,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Chats"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Updates"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "Communities"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Calls"),
          ]),
    );
  }
}
