import 'package:exam_exam/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Registrationpage extends StatefulWidget {
  @override
  State<Registrationpage> createState() => _RegistrationpageState();
}

class _RegistrationpageState extends State<Registrationpage> {
  late Box box;

  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasseordController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();

  List<Map<String, String>> regList = [];

  String _registrationMessage = "";

  @override
  void initState() {
    super.initState();
    box = Hive.box('mybox');
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 250, 241, 243),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Center(
                child: Text(
              "CREATE NEW ACCOUNT",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 12, 10, 10)),
            )),
            SizedBox(height: 80),
            SizedBox(
              height: 50,
              width: 300,
              child: TextField(
                controller: fullnameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Full Name"),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 300,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Email"),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 300,
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Password"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: TextField(
                controller: confirmpasseordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Confirm password"),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 300,
              child: TextField(
                controller: phonenumberController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Phone number"),
              ),
            ),
            SizedBox(height: 40),
            Container(
              height: 50,
              width: 200,
              color: Colors.white,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (fullnameController.text.isEmpty ||
                          emailController.text.isEmpty ||
                          passwordController.text.isEmpty ||
                          confirmpasseordController.text.isEmpty ||
                          phonenumberController.text.isEmpty) {
                        _registrationMessage = "All fiels are required";
                        return;
                      }

                      if (passwordController.text !=
                          confirmpasseordController.text) {
                        _registrationMessage = "password do not match";
                        return;
                      }

                      regList.add({
                        'fullname': fullnameController.text,
                        'email': emailController.text,
                        'password': passwordController.text,
                        'confirmpassword': confirmpasseordController.text,
                      });

                      box.put(
                          'regList',
                          regList
                              .map((e) => Map<String, dynamic>.from(e))
                              .toList());

                      fullnameController.clear();
                      emailController.clear();
                      passwordController.clear();
                      confirmpasseordController.clear();
                      phonenumberController.clear();

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    });
                    SizedBox(height: 30);
                    print("$_registrationMessage");
                  },
                  child: Text(
                    "Create an account",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple),
                  ),
                ),
              ),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Already You Have An Account?"),
                SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text(
                    "Log In",
                    style: TextStyle(color: Colors.purple),
                  ),
                ),
              ],
            )
          ]),
        )));
  }
}
