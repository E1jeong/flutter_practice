import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      title: "mission",
      theme: ThemeData(canvasColor: Colors.grey[900]),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(backgroundColor: Colors.grey[900], elevation: 0),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/luffy.png"),
                  backgroundColor: Colors.amber[50]),
              accountName: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("LUFFY"),
                ],
              ),
              accountEmail: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Flutter Developer & Founder of The Flutter Way",
                    style: TextStyle(color: Colors.grey[500], fontSize: 10),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.grey[700],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Residence :",
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      Text("Bangladesh",
                          style:
                              TextStyle(fontSize: 10, color: Colors.grey[500])),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("City :",
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      Text("Dhaka",
                          style:
                              TextStyle(fontSize: 10, color: Colors.grey[500])),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Age :",
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      Text("22",
                          style:
                              TextStyle(fontSize: 10, color: Colors.grey[500])),
                    ],
                  ),
                  Divider(
                    height: 30,
                    color: Colors.grey[500],
                    thickness: 0.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Skills",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TweenAnimationBuilder(
                              tween: Tween(begin: 0.0, end: 0.8),
                              duration: Duration(seconds: 1),
                              builder: (context, double _value, _) => SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  value: _value,
                                  backgroundColor: Colors.black,
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.yellow),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Flutter",
                                style: TextStyle(color: Colors.white))
                          ]),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TweenAnimationBuilder(
                              tween: Tween(begin: 0.0, end: 0.75),
                              duration: Duration(seconds: 1),
                              builder: (context, double _value, _) => SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  value: _value,
                                  backgroundColor: Colors.black,
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.yellow),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Django",
                                style: TextStyle(color: Colors.white))
                          ]),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(children: [
                              TweenAnimationBuilder(
                                tween: Tween(begin: 0.0, end: 0.65),
                                duration: Duration(seconds: 1),
                                builder: (context, double _value, _) =>
                                    SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    value: _value,
                                    backgroundColor: Colors.black,
                                    valueColor:
                                        AlwaysStoppedAnimation(Colors.yellow),
                                  ),
                                ),
                              )
                            ]),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Firebase",
                                style: TextStyle(color: Colors.white))
                          ])
                    ],
                  ),
                  Divider(
                    height: 30,
                    color: Colors.grey[500],
                    thickness: 0.5,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Coding",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Dart",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          Text("70%",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.grey[500])),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      TweenAnimationBuilder(
                        tween: Tween(begin: 0.0, end: 0.7),
                        duration: Duration(seconds: 1),
                        builder: (context, double _value, _) => SizedBox(
                          height: 5,
                          child: LinearProgressIndicator(
                            value: _value,
                            backgroundColor: Colors.black,
                            valueColor: AlwaysStoppedAnimation(Colors.yellow),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Python",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          Text("68%",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.grey[500])),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      TweenAnimationBuilder(
                        tween: Tween(begin: 0.0, end: 0.68),
                        duration: Duration(seconds: 1),
                        builder: (context, double _value, _) => SizedBox(
                          height: 5,
                          child: LinearProgressIndicator(
                            value: _value,
                            backgroundColor: Colors.black,
                            valueColor: AlwaysStoppedAnimation(Colors.yellow),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("HTML",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          Text("90%",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.grey[500])),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      TweenAnimationBuilder(
                        tween: Tween(begin: 0.0, end: 0.9),
                        duration: Duration(seconds: 1),
                        builder: (context, double _value, _) => SizedBox(
                          height: 5,
                          child: LinearProgressIndicator(
                            value: _value,
                            backgroundColor: Colors.black,
                            valueColor: AlwaysStoppedAnimation(Colors.yellow),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("CSS",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          Text("75%",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.grey[500])),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      TweenAnimationBuilder(
                        tween: Tween(begin: 0.0, end: 0.75),
                        duration: Duration(seconds: 1),
                        builder: (context, double _value, _) => SizedBox(
                          height: 5,
                          child: LinearProgressIndicator(
                            value: _value,
                            backgroundColor: Colors.black,
                            valueColor: AlwaysStoppedAnimation(Colors.yellow),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("JavaScript",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          Text("57%",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.grey[500])),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      TweenAnimationBuilder(
                        tween: Tween(begin: 0.0, end: 0.57),
                        duration: Duration(seconds: 1),
                        builder: (context, double _value, _) => SizedBox(
                          height: 5,
                          child: LinearProgressIndicator(
                            value: _value,
                            backgroundColor: Colors.black,
                            valueColor: AlwaysStoppedAnimation(Colors.yellow),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset("assets/titleImage.jpg"),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discover my Amazing Art Space !",
                          style: TextStyle(color: Colors.white, fontSize: 38.0),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "I Build Chat app with dark and light",
                          style: TextStyle(color: Colors.white, fontSize: 14.0),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Table(
                children: [
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("119K+",
                              style: TextStyle(
                                  color: Colors.yellow[600], fontSize: 18)),
                          SizedBox(width: 10),
                          Text("Subscribers",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14))
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("40+",
                                style: TextStyle(
                                    color: Colors.yellow[600], fontSize: 18)),
                            SizedBox(width: 10),
                            Text("Videos",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14))
                          ],
                        )),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("30+",
                              style: TextStyle(
                                  color: Colors.yellow[600], fontSize: 18)),
                          SizedBox(width: 10),
                          Text("Projects",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14))
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("13K+",
                                style: TextStyle(
                                    color: Colors.yellow[600], fontSize: 18)),
                            SizedBox(width: 10),
                            Text("Stars",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14))
                          ],
                        )),
                  ]),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 30),
                child: Text(
                  "My Project",
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 220,
                    color: Colors.grey[800],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Responsive Admin Panel or Dashboard - Flutter UI",
                          style: TextStyle(color: Colors.white, fontSize: 22.0),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "On Flutter V2.* web officially supported on a stable branch. Today I share an Admin panel or you can call",
                          style: TextStyle(
                              color: Colors.grey[700], fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("  Read More >>",
                            style: TextStyle(
                                color: Colors.yellow[600], fontSize: 18))
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    height: 220,
                    color: Colors.grey[800],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "E-Commerce Complete App - Flutter UI",
                          style: TextStyle(color: Colors.white, fontSize: 22.0),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app the can",
                          style: TextStyle(
                              color: Colors.grey[700], fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "  Read More >>",
                              style: TextStyle(
                                  color: Colors.yellow[600], fontSize: 18),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ReadMore()));
                                })
                        ]))
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    height: 220,
                    color: Colors.grey[800],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Outlook Email App Redesign - Flutter Fully Responsive Design UI",
                          style: TextStyle(color: Colors.white, fontSize: 22.0),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "We redesign outlook app also make it reponsive so that you can run it everywhere on your phone, tab,",
                          style: TextStyle(
                              color: Colors.grey[700], fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("  Read More >>",
                            style: TextStyle(
                                color: Colors.yellow[600], fontSize: 18))
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class MainPage extends StatelessWidget {
//   const MainPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[900],
//       appBar: AppBar(backgroundColor: Colors.grey[900], elevation: 0),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             UserAccountsDrawerHeader(
//               currentAccountPicture: CircleAvatar(
//                   backgroundImage: AssetImage("assets/luffy.png"),
//                   backgroundColor: Colors.amber[50]),
//               accountName: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("LUFFY"),
//                 ],
//               ),
//               accountEmail: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Flutter Developer & Founder of The Flutter Way",
//                     style: TextStyle(color: Colors.grey[500], fontSize: 10),
//                   )
//                 ],
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.grey[700],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("Residence :",
//                           style: TextStyle(fontSize: 10, color: Colors.white)),
//                       Text("Bangladesh",
//                           style:
//                               TextStyle(fontSize: 10, color: Colors.grey[500])),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("City :",
//                           style: TextStyle(fontSize: 10, color: Colors.white)),
//                       Text("Dhaka",
//                           style:
//                               TextStyle(fontSize: 10, color: Colors.grey[500])),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("Age :",
//                           style: TextStyle(fontSize: 10, color: Colors.white)),
//                       Text("22",
//                           style:
//                               TextStyle(fontSize: 10, color: Colors.grey[500])),
//                     ],
//                   ),
//                   Divider(
//                     height: 30,
//                     color: Colors.grey[500],
//                     thickness: 0.5,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Skills",
//                         style: TextStyle(fontSize: 20, color: Colors.white),
//                         textAlign: TextAlign.left,
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Column(children: [
//                         CircularProgressIndicator(
//                           value: 0.8,
//                           backgroundColor: Colors.black,
//                           valueColor: AlwaysStoppedAnimation(Colors.yellow),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text("Flutter", style: TextStyle(color: Colors.white))
//                       ]),
//                       Column(children: [
//                         CircularProgressIndicator(
//                           value: 0.72,
//                           backgroundColor: Colors.black,
//                           valueColor: AlwaysStoppedAnimation(Colors.yellow),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text("Django", style: TextStyle(color: Colors.white))
//                       ]),
//                       Column(children: [
//                         CircularProgressIndicator(
//                           value: 0.65,
//                           backgroundColor: Colors.black,
//                           valueColor: AlwaysStoppedAnimation(Colors.yellow),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text("Firebase", style: TextStyle(color: Colors.white))
//                       ])
//                     ],
//                   ),
//                   Divider(
//                     height: 30,
//                     color: Colors.grey[500],
//                     thickness: 0.5,
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Coding",
//                         style: TextStyle(fontSize: 20, color: Colors.white),
//                         textAlign: TextAlign.left,
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("Dart",
//                               style:
//                                   TextStyle(fontSize: 10, color: Colors.white)),
//                           Text("70%",
//                               style: TextStyle(
//                                   fontSize: 10, color: Colors.grey[500])),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 3,
//                       ),
//                       LinearProgressIndicator(
//                         value: 0.7,
//                         backgroundColor: Colors.black,
//                         valueColor: AlwaysStoppedAnimation(Colors.yellow),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("Python",
//                               style:
//                                   TextStyle(fontSize: 10, color: Colors.white)),
//                           Text("68%",
//                               style: TextStyle(
//                                   fontSize: 10, color: Colors.grey[500])),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 3,
//                       ),
//                       LinearProgressIndicator(
//                         value: 0.68,
//                         backgroundColor: Colors.black,
//                         valueColor: AlwaysStoppedAnimation(Colors.yellow),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("HTML",
//                               style:
//                                   TextStyle(fontSize: 10, color: Colors.white)),
//                           Text("90%",
//                               style: TextStyle(
//                                   fontSize: 10, color: Colors.grey[500])),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 3,
//                       ),
//                       LinearProgressIndicator(
//                         value: 0.9,
//                         backgroundColor: Colors.black,
//                         valueColor: AlwaysStoppedAnimation(Colors.yellow),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("CSS",
//                               style:
//                                   TextStyle(fontSize: 10, color: Colors.white)),
//                           Text("75%",
//                               style: TextStyle(
//                                   fontSize: 10, color: Colors.grey[500])),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 3,
//                       ),
//                       LinearProgressIndicator(
//                         value: 0.75,
//                         backgroundColor: Colors.black,
//                         valueColor: AlwaysStoppedAnimation(Colors.yellow),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("JavaScript",
//                               style:
//                                   TextStyle(fontSize: 10, color: Colors.white)),
//                           Text("57%",
//                               style: TextStyle(
//                                   fontSize: 10, color: Colors.grey[500])),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 3,
//                       ),
//                       LinearProgressIndicator(
//                         value: 0.57,
//                         backgroundColor: Colors.black,
//                         valueColor: AlwaysStoppedAnimation(Colors.yellow),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//       body: ListView(
//         padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Stack(
//                 children: [
//                   Image.asset("assets/titleImage.jpg"),
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Discover my Amazing Art Space !",
//                           style: TextStyle(color: Colors.white, fontSize: 38.0),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text(
//                           "I Build Chat app with dark and light",
//                           style: TextStyle(color: Colors.white, fontSize: 14.0),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//               Table(
//                 children: [
//                   TableRow(children: [
//                     Padding(
//                       padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text("119K+",
//                               style: TextStyle(
//                                   color: Colors.yellow[600], fontSize: 18)),
//                           SizedBox(width: 10),
//                           Text("Subscribers",
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 14))
//                         ],
//                       ),
//                     ),
//                     Padding(
//                         padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Text("40+",
//                                 style: TextStyle(
//                                     color: Colors.yellow[600], fontSize: 18)),
//                             SizedBox(width: 10),
//                             Text("Videos",
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 14))
//                           ],
//                         )),
//                   ]),
//                   TableRow(children: [
//                     Padding(
//                       padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text("30+",
//                               style: TextStyle(
//                                   color: Colors.yellow[600], fontSize: 18)),
//                           SizedBox(width: 10),
//                           Text("Projects",
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 14))
//                         ],
//                       ),
//                     ),
//                     Padding(
//                         padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Text("13K+",
//                                 style: TextStyle(
//                                     color: Colors.yellow[600], fontSize: 18)),
//                             SizedBox(width: 10),
//                             Text("Stars",
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 14))
//                           ],
//                         )),
//                   ]),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(10, 10, 0, 30),
//                 child: Text(
//                   "My Project",
//                   style: TextStyle(
//                       fontSize: 26,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ),
//               Stack(
//                 children: [
//                   Container(
//                     height: 220,
//                     color: Colors.grey[800],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Responsive Admin Panel or Dashboard - Flutter UI",
//                           style: TextStyle(color: Colors.white, fontSize: 22.0),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text(
//                           "On Flutter V2.* web officially supported on a stable branch. Today I share an Admin panel or you can call",
//                           style: TextStyle(
//                               color: Colors.grey[700], fontSize: 18.0),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text("  Read More >>",
//                             style: TextStyle(
//                                 color: Colors.yellow[600], fontSize: 18))
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Stack(
//                 children: [
//                   Container(
//                     height: 220,
//                     color: Colors.grey[800],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "E-Commerce Complete App - Flutter UI",
//                           style: TextStyle(color: Colors.white, fontSize: 22.0),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text(
//                           "In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app the can",
//                           style: TextStyle(
//                               color: Colors.grey[700], fontSize: 18.0),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         RichText(
//                             text: TextSpan(children: [
//                           TextSpan(
//                               text: "  Read More >>",
//                               style: TextStyle(
//                                   color: Colors.yellow[600], fontSize: 18),
//                               recognizer: TapGestureRecognizer()
//                                 ..onTap = () {
//                                   Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) => ReadMore()));
//                                 })
//                         ]))
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Stack(
//                 children: [
//                   Container(
//                     height: 220,
//                     color: Colors.grey[800],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Outlook Email App Redesign - Flutter Fully Responsive Design UI",
//                           style: TextStyle(color: Colors.white, fontSize: 22.0),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text(
//                           "We redesign outlook app also make it reponsive so that you can run it everywhere on your phone, tab,",
//                           style: TextStyle(
//                               color: Colors.grey[700], fontSize: 18.0),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text("  Read More >>",
//                             style: TextStyle(
//                                 color: Colors.yellow[600], fontSize: 18))
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

class ReadMore extends StatelessWidget {
  const ReadMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text(
            "Read More",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.grey[900],
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Column(
              children: [
                Text("E-Commerce Complete App - Flutter UI",
                    style: TextStyle(color: Colors.white, fontSize: 32)),
                SizedBox(height: 10),
                Text(
                    "In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app the can run both Android and iOS devices because it builds with flutter. Then on the second episode, we build a Sign in, Forgot Password screen with a custom error indicator.",
                    style: TextStyle(color: Colors.grey[700]))
              ],
            )));
  }
}

void titleText(String comment, double size) {
  Text(comment, style: TextStyle(color: Colors.white, fontSize: size));
}
