import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import './demo.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Menu());
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                  child: SizedBox(height: 50)),
              Text.rich(
                  TextSpan(
                      text: 'Welcome,',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: ' Parent',
                          style: TextStyle(fontWeight: FontWeight.normal),
                        ),
                      ]),
                  style: TextStyle(fontSize: 50)),
              SizedBox(height: 2),
              SizedBox(
                height: 500,
                child: GridView(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Demo()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.movie,
                              size: 50,
                              color: Colors.white,
                            ),
                            Text(
                              "Demo",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MenuPage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.notifications,
                              size: 50,
                              color: Colors.white,
                            ),
                            Text(
                              "Notif",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        FlutterPhoneDirectCaller.callNumber('+6282394900556');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.call,
                              size: 50,
                              color: Colors.white,
                            ),
                            Text(
                              "Call Anak",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        launchUrl(
                            Uri.parse('https://wa.me/+628230400556?text=Hi'),
                            mode: LaunchMode.externalApplication);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 203, 186, 34),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.whatsapp,
                              size: 50,
                              color: Colors.white,
                            ),
                            Text(
                              "WA Anak",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            )
                          ],
                        ),
                      ),
                    ),

                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                              width: 335,
                              height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.purple,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 50,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Locate Student",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                ),
              ),
            ],
          )),
    );
  }
}

final buttons = ['Notif', 'Demo', 'Call', 'WA'];
