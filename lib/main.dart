import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Stack(
        children: [
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 179, 95, 194),
                    Color.fromARGB(255, 128, 212, 251)
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            ),
          ),
          Positioned(
            left: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) / 4,
            child: Container(
              child: const Center(
                child: Text(
                  "Breeze",
                  style: TextStyle(
                      fontFamily: "GingerBread",
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 68, 193, 251),
                    Color.fromARGB(255, 240, 152, 255),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            ),
          ),
          Positioned(
            right: -getBigDiameter(context) / 2,
            bottom: -getBigDiameter(context) / 2,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 245, 196, 255),
                    Color.fromARGB(255, 215, 238, 248)
                  ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Color.fromARGB(255, 218, 218, 218)),
                      borderRadius: BorderRadius.circular(13)),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(children: [
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Color.fromARGB(255, 234, 113, 255),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 234, 113, 255))),
                          labelText: "Email:",
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 234, 113, 255))),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 13, 0, 0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.vpn_key,
                              color: Color.fromARGB(255, 234, 113, 255),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 234, 113, 255))),
                            labelText: "Password:",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 234, 113, 255))),
                      ),
                    )
                  ]),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Color.fromARGB(255, 234, 113, 255),
                            fontSize: 14),
                      ),
                    )),
                Container(
                  margin: EdgeInsets.fromLTRB(25, 0, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40,
                        child: Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              splashColor: Color.fromARGB(255, 119, 212, 255),
                              onTap: () {},
                              child: Center(
                                child: Text(
                                  "SIGN IN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17),
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 240, 204, 247)),
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 241, 159, 255),
                                    Color.fromARGB(255, 118, 209, 252),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                        ),
                      ),
                      FloatingActionButton(
                        backgroundColor: Color(0xFFEEEEEE),
                        splashColor: Color.fromARGB(255, 241, 159, 255),
                        mini: true,
                        elevation: 0,
                        onPressed: () {},
                        child: Image(
                          image: NetworkImage(
                              "https://www.freepnglogos.com/uploads/google-logo-png-transparent-24.png"),
                        ),
                      ),
                      FloatingActionButton(
                        splashColor: Color.fromARGB(255, 241, 159, 255),
                        mini: true,
                        elevation: 0,
                        onPressed: () {},
                        child: Image(
                          image: NetworkImage(
                              "https://www.freepnglogos.com/uploads/512x512-logo/512x512-transparent-circle-instagram-media-network-social-logo-new-16.png"),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't Have An Account? ",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 241, 159, 255),
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
