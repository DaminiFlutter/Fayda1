import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool visibleDot1 = true,
      visibleDot2 = true,
      visibleDot3 = true,
      visibleDot4 = true,
      visibleDot5 = true,
      visibleDot6 = true,
      shouldShowVerified = false;
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();
  TextEditingController text3 = TextEditingController();
  TextEditingController text4 = TextEditingController();
  TextEditingController text5 = TextEditingController();
  TextEditingController text6 = TextEditingController();
  FocusNode text1Focus = FocusNode();
  FocusNode text2Focus = FocusNode();
  FocusNode text3Focus = FocusNode();
  FocusNode text4Focus = FocusNode();
  FocusNode text5Focus = FocusNode();
  FocusNode text6Focus = FocusNode();

  Widget otpDot() {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: height * 0.15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:
                      shouldShowVerified ? Colors.green : Colors.transparent),

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                        height: 60,
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: !visibleDot1 ? 50 : 10,
                                width: !visibleDot1 ? 50 : 10,
                                child: TextField(
                                  focusNode: text1Focus,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    filled: visibleDot1 ? true : false,
                                    fillColor: Colors.grey,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  style: TextStyle(fontSize: 24),
                                  onChanged: (value) {
                                    if (value == "") {
                                      setState(() {
                                        visibleDot1 = true;
                                      });
                                    } else {
                                      setState(() {
                                        visibleDot1 = false;
                                      });
                                    }
                                    FocusScope.of(context)
                                        .requestFocus(text2Focus);
                                    // text1.text = value;
                                  },
                                  controller: text1,
                                ),
                              ),
                              visibleDot1
                                  ? SizedBox(
                                      width: 40,
                                    )
                                  : SizedBox.shrink(),
                              Container(
                                height: !visibleDot2 ? 50 : 10,
                                width: !visibleDot2 ? 50 : 10,
                                child: TextField(
                                  style: TextStyle(fontSize: 24),
                                  focusNode: text2Focus,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    filled: visibleDot2 ? true : false,
                                    fillColor: Colors.grey,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  onChanged: (value) {
                                    if (value == "") {
                                      setState(() {
                                        visibleDot2 = true;
                                      });
                                    } else {
                                      setState(() {
                                        visibleDot2 = false;
                                      });
                                    }
                                    FocusScope.of(context)
                                        .requestFocus(text3Focus);
                                    // text1.text = value;
                                  },
                                  controller: text2,
                                ),
                              ),
                              visibleDot2
                                  ? SizedBox(
                                      width: 40,
                                    )
                                  : SizedBox.shrink(),
                              Container(
                                height: !visibleDot3 ? 50 : 10,
                                width: !visibleDot3 ? 50 : 10,
                                child: TextField(
                                  style: TextStyle(fontSize: 24),
                                  focusNode: text3Focus,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    filled: visibleDot3 ? true : false,
                                    fillColor: Colors.grey,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  onChanged: (value) {
                                    if (value == "") {
                                      setState(() {
                                        visibleDot3 = true;
                                      });
                                    } else {
                                      setState(() {
                                        visibleDot3 = false;
                                      });
                                    }
                                    FocusScope.of(context)
                                        .requestFocus(text4Focus);
                                    // text1.text = value;
                                  },
                                  controller: text3,
                                ),
                              ),
                              visibleDot3
                                  ? SizedBox(
                                      width: 40,
                                    )
                                  : SizedBox.shrink(),
                              Container(
                                height: !visibleDot4 ? 50 : 10,
                                width: !visibleDot4 ? 50 : 10,
                                child: TextField(
                                  style: TextStyle(fontSize: 24),
                                  focusNode: text4Focus,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    filled: visibleDot4 ? true : false,
                                    fillColor: Colors.grey,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  onChanged: (value) {
                                    if (value == "") {
                                      visibleDot4 = true;
                                    } else {
                                      setState(() {
                                        visibleDot4 = false;
                                      });
                                    }
                                    FocusScope.of(context)
                                        .requestFocus(text5Focus);
                                    // text1.text = value;
                                  },
                                  controller: text4,
                                ),
                              ),
                              visibleDot4
                                  ? SizedBox(
                                      width: 40,
                                    )
                                  : SizedBox.shrink(),
                              Container(
                                height: !visibleDot5 ? 50 : 10,
                                width: !visibleDot5 ? 50 : 10,
                                child: TextField(
                                  style: TextStyle(fontSize: 24),
                                  focusNode: text5Focus,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    filled: visibleDot5 ? true : false,
                                    fillColor: Colors.grey,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  onChanged: (value) {
                                    if (value == "") {
                                      setState(() {
                                        visibleDot5 = true;
                                      });
                                    } else {
                                      setState(() {
                                        visibleDot5 = false;
                                      });
                                    }

                                    FocusScope.of(context)
                                        .requestFocus(text6Focus);
                                    // text1.text = value;
                                  },
                                  controller: text5,
                                ),
                              ),
                              visibleDot5
                                  ? SizedBox(
                                      width: 35,
                                    )
                                  : SizedBox.shrink(),
                              Container(
                                height: !visibleDot6 ? 50 : 10,
                                width: !visibleDot6 ? 40 : 10,
                                child: TextField(
                                  style: TextStyle(fontSize: 24),
                                  focusNode: text6Focus,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    filled: visibleDot6 ? true : false,
                                    fillColor: Colors.grey,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  onChanged: (value) {
                                    if (value == "") {
                                      setState(() {
                                        visibleDot6 = true;
                                        shouldShowVerified = false;
                                      });
                                    } else {
                                      setState(() {
                                        visibleDot6 = false;
                                        shouldShowVerified = true;
                                      });
                                    }
                                  },
                                  controller: text6,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      shouldShowVerified
                          ? Row(
                              children: [
                                SvgPicture.asset('assets/images/Correct.svg'),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Verified",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                )
                                // Icon(
                                //   Icons.rig
                                // )
                              ],
                            )
                          : Text(
                              "Verification code expires in 2:50",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                            )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
