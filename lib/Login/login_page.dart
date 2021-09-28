import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("First app"),
        toolbarHeight: 0,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        // elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.red, Colors.blue, Colors.purple])),
        child: Center(
          child: Column(
            children: [
              Spacer(),
              Container(
                  height: 45,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.transparent,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.white,
                    child: Center(
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration.collapsed(
                          hintText: 'Enter your mobile number',
                        ),
                      ),
                    ),
                  )),
              SizedBox(height: 20),
              Container(
                  height: 45,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.transparent,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.white,
                    child: Center(
                      child: TextField(
                        obscureText: true,
                        enableSuggestions: true,
                        decoration: const InputDecoration.collapsed(
                            hintText: 'Enter your password'),
                      ),
                    ),
                  )),
              SizedBox(height: 20),
              Container(
                color: Colors.teal,
                height: 40,
                width: MediaQuery.of(context).size.width - 80,
                child: OutlinedButton(
                    onPressed: () {
                      print("login pressed");
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
