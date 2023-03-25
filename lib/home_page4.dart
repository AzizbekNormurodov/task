import 'package:flutter/material.dart';
import 'package:task44/home_page1.dart';
import 'package:task44/home_page2.dart';

class HomePage4 extends StatelessWidget {
  const HomePage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 76),
          Center(
            child: Image.asset("assets/svg/777.png", width: 128, height: 128),
          ),
          SizedBox(height: 32),
          Text(
            "Jane",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 40),
          ),
          SizedBox(height: 16),
          Text(
            "SAN FRANCISCO, CA",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 32),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HomePage1();
                }));
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black, minimumSize:Size(343, 52) ),
              child: Text(
                "FALLOW JANE",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 13),
              )),
          SizedBox(height: 16),
          Container( decoration: BoxDecoration(border: Border.all(width: 2)),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return HomePage1();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white, minimumSize:Size(343, 52),elevation: 0,),
                child: Text(
                  "MESSAGE",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 13),
                )),
          ),
        ],
      ),
    );
  }
}
