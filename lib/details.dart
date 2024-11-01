import 'package:flutter/material.dart';

class Detailspage extends StatelessWidget {
  final String imagepath;
  final String name;

  Detailspage({required this.imagepath, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 242, 242),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Details",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Spacer(),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Container(
                height: 260,
                width: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(imagepath)))),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Spacer(),
                  Text(
                    "7.50",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Ingredients",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 193, 134, 204),
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/download (3).jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 114, 189, 236),
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/download (1).jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 204, 167, 134),
                        image: DecorationImage(
                            image: AssetImage("assets/images/images (1).jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 233, 97, 183),
                        image: DecorationImage(
                            image: AssetImage("assets/images/images.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Description",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                "This beef burger uses 100% quality beef with sliced tomatoes,cucumbers,vegitables and onions...Read more",
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white),
                    child: Row(
                      children: [
                        FloatingActionButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.remove,
                            color: Colors.black,
                          ),
                          backgroundColor:
                              const Color.fromARGB(255, 192, 187, 187),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("1"),
                        SizedBox(
                          width: 10,
                        ),
                        FloatingActionButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            backgroundColor: Colors.red),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red),
                    child: Center(
                        child: Text(
                      "Add to cart",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
