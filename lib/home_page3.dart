import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task44/home_page4.dart';

class HomePage3 extends StatelessWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 320),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              } ,
              child: Icon(Icons.arrow_back, color: Colors.black),
              style: ElevatedButton.styleFrom(primary: Colors.white, elevation: 0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 211),
            child: Text("Log in",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 36,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 32),
            child: Container(
              width: 370,
              height: 52,
              decoration: BoxDecoration(border: Border.all(width: 2)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email address",
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: Container(
              width: 370,
              height: 52,
              decoration: BoxDecoration(border: Border.all(width: 2)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HomePage4();
                }));
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black, maximumSize: Size(370, 52)),
              child: Center(
                child: Text(
                  "NEXT",
                  style: TextStyle(
                      fontWeight: FontWeight.w900, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
