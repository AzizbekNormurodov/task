import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";
import 'package:task44/home_page2.dart';
import 'package:task44/home_page3.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image(
              image: AssetImage("assets/svg/10.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            child: Center(
              child:
                  SvgPicture.asset("assets/svg/11.svg", width: 200, height: 50),
            ),
          ),
          Positioned(
            bottom: 125,
            left: 20,
            child: Container(
              child: Row(
                children: [
                  Image.asset("assets/svg/12.png", width: 28, height: 28),
                  Column(
                    children: [
                      Text("Pawel Czerwinski"),
                      Text("@pawel_czerwinski"),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 400,
              height: 100,
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage3(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              maximumSize: Size(190, 52),
                              elevation: 0),
                          child: Container(
                            width: 167,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: Colors.red,
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "LOG IN",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage2(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              maximumSize: Size(190, 52),
                              elevation: 0),
                          child: Container(
                            width: 167,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: Colors.red,
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "REGISTER",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
