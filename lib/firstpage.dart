import 'package:exam_exam/loginpage.dart';
import 'package:exam_exam/registerpage.dart';
import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(height: 100),
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/cartoon.jpeg"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(height: 15),
              Center(
                  child: Text(
                "The Fastest Food ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
              Center(
                  child: Text(
                "Delivery App In Town",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
              SizedBox(height: 15),
              Center(
                child: Text(
                  "Pick your desired food items from the menu ",
                  style: TextStyle(fontSize: 10),
                ),
              ),
              Center(
                  child: Text("There are more than 200 items.",
                      style: TextStyle(fontSize: 10))),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.red),
                child: Center(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                )),
              ),
              SizedBox(height: 10),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have an account? ",
                      style: TextStyle(fontSize: 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Registrationpage()));
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(fontSize: 10, color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
