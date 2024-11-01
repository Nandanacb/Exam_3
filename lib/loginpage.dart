import 'package:exam_exam/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late Box box;

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String _loginMessage = "";

  @override
  void initState() {
    super.initState();
    box = Hive.box('mybox');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 250, 241, 243),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(children: [
              Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                  height: 50,
                  width: 300,
                  child: TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Username"),
                    onChanged: (text) {
                      _loginMessage = "";
                    },
                  )),
              SizedBox(height: 20),
              SizedBox(
                  height: 50,
                  width: 300,
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Password"),
                    onChanged: (text) {
                      _loginMessage = "";
                    },
                  )),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () {
                    List<dynamic> userListDynamic =
                        box.get('regList', defaultValue: []);

                    List<Map<String, String>> userList = userListDynamic
                        .map((e) => Map<String, String>.from(e as Map))
                        .toList();

                    bool userFound = false;
                    bool passwordCorrect = false;

                    for (var user in userList) {
                      if (user['fullname'] == usernameController.text) {
                        userFound = true;

                        if (user['password'] == passwordController.text) {
                          passwordCorrect = true;
                        }
                      }
                    }

                    if (userFound && passwordCorrect) {
                      setState(() {
                        _loginMessage = "Login sucessfull";

                        usernameController.clear();
                        passwordController.clear();

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Secondpage()));
                      });
                    } else {
                      setState(() {
                        _loginMessage = "User not found";
                      });
                    }
                  },
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Secondpage()));
                      },
                      child: Text("Log in"))),
              SizedBox(
                height: 20,
              ),
              Text("$_loginMessage"),
            ]),
          ),
        ));
  }
}
