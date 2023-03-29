import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Color.fromARGB(200, 222, 236, 255)),
      home: const MyHomePage(title: 'Apply Leave'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> items = [
    '   SELECT TYPE',
    'Medical',
    'Function',
    'Emergency',
    'Personal',
    'Others',
  ];
  String dropdownValue = '   SELECT TYPE';

  @override
  Widget build(BuildContext context) {
    var host;
    var child;

    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 55,
          title: Text('Apply Leave'),
          titleTextStyle: TextStyle(
            fontFamily: 'Roboto',
            color: Color.fromARGB(255, 44, 47, 90),
            fontSize: 21.0,
            fontWeight: FontWeight.bold,
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          ),
          elevation: 10,
          backgroundColor: Colors.white,
        ),
        body: Center(
            child: Container(
                height: 500,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white70),
                child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                        padding: EdgeInsets.only(
                            left: 16, right: 16, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 3.0,
                            ),
                            // ignore: prefer_const_constructors
                            Align(
                              alignment: Alignment(-1, 1),
                              child: Text(
                                "Type",
                                style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 13,
                                  fontFamily: 'Roboto',
                                  color: Color.fromARGB(255, 57, 56, 56),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),

                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 242, 242, 242),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: DropdownButton<String>(
                                icon: Icon(Icons.arrow_drop_down),
                                iconSize: 25,
                                isExpanded: true,
                                underline: SizedBox(
                                  height: 5,
                                  width: 20,
                                ),
                                focusColor: Colors.black12,
                                borderRadius: BorderRadius.circular(30),
                                style: TextStyle(
                                  color: Color.fromARGB(255, 57, 56, 56),
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Roboto',
                                  fontSize: 12,
                                ),
                                value: dropdownValue,
                                items: items.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                      value: value, child: Text(value));
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue ?? '';
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Align(
                              alignment: Alignment(-1, 1),
                              child: Text(
                                "Reason",
                                style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 13,
                                  fontFamily: 'Roboto',
                                  color: Color.fromARGB(255, 57, 56, 56),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                              width: 20,
                            ),

                            child = Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 242, 242, 242),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.all(16.0),
                                        ),
                                        hintText: "SELECT REASON",
                                        hintStyle: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12,
                                          fontFamily: 'Roboto',
                                          color: Color.fromARGB(
                                              255, 133, 130, 130),
                                        ),
                                        filled: true,
                                        fillColor:
                                            Color.fromARGB(255, 242, 242, 242),
                                        labelStyle:
                                            TextStyle(color: Colors.black)),
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 57, 56, 56),
                                      fontSize: 14,
                                    ),
                                    controller: host,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Empty value";
                                      }
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                child = Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: [
                                            Align(
                                              alignment: Alignment(-1, 1),
                                              child: Text(
                                                "Number of days",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w100,
                                                  fontSize: 12,
                                                  fontFamily: 'Roboto',
                                                  color: Color.fromARGB(
                                                      255, 57, 56, 56),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Row(
                                          children: [
                                            Align(
                                              alignment: Alignment(1, -7),
                                              child: Text(
                                                "Availed",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w100,
                                                  fontSize: 12,
                                                  fontFamily: 'Roboto',
                                                  color: Color.fromARGB(
                                                      255, 57, 56, 56),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20.0,
                                        ),
                                        Row(
                                          children: [
                                            Align(
                                              alignment: Alignment(1, 1),
                                              child: Text(
                                                "Total",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w100,
                                                  fontSize: 12,
                                                  fontFamily: 'Roboto',
                                                  color: Color.fromARGB(
                                                      255, 57, 56, 56),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            child = Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: [
                                        Container(
                                          alignment: Alignment(-1, 1),
                                          width: 120.0,
                                          height: 46,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 242, 242, 242),
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                prefixIcon: Padding(
                                                  padding: EdgeInsets.all(16.0),
                                                ),
                                                filled: true,
                                                fillColor: Color.fromARGB(
                                                    255, 242, 242, 242),
                                                labelStyle: TextStyle(
                                                    color: Colors.black)),
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 57, 56, 56),
                                              fontSize: 14,
                                            ),
                                            controller: host,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return "Empty value";
                                              }
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                      width: 30,
                                    ),
                                    child = Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: [
                                            Container(
                                              alignment: Alignment(1, -6),
                                              height: 46,
                                              width: 46.0,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 242, 242, 242),
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: TextFormField(
                                                keyboardType:
                                                    TextInputType.number,
                                                decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    prefixIcon: Padding(
                                                      padding:
                                                          EdgeInsets.all(16.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Color.fromARGB(
                                                        255, 242, 242, 242),
                                                    labelStyle: TextStyle(
                                                        color: Colors.black)),
                                                textAlign: TextAlign.left,
                                                style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 57, 56, 56),
                                                  fontSize: 5,
                                                ),
                                                controller: host,
                                                validator: (value) {
                                                  if (value!.isEmpty) {
                                                    return "Empty value";
                                                  }
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                      width: 30,
                                    ),
                                    child = Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: [
                                            Container(
                                              alignment: Alignment(1, -6),
                                              height: 46,
                                              width: 46.0,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 242, 242, 242),
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: TextFormField(
                                                keyboardType:
                                                    TextInputType.number,
                                                decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    prefixIcon: Padding(
                                                      padding:
                                                          EdgeInsets.all(16.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Color.fromARGB(
                                                        255, 242, 242, 242),
                                                    labelStyle: TextStyle(
                                                        color: Colors.black)),
                                                textAlign: TextAlign.left,
                                                style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 57, 56, 56),
                                                  fontSize: 14,
                                                ),
                                                controller: host,
                                                validator: (value) {
                                                  if (value!.isEmpty) {
                                                    return "Empty value";
                                                  }
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                              width: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromRGBO(19, 74, 147, 0.612)),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  onboardingp3()));
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 13, vertical: 12),
                                      child: Row(children: [
                                        Text(
                                          "Apply Leave ",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ]),
                                    )),
                              ],
                            )
                          ],
                        ))))));
  }

  onboardingp3() {}

  getColor(Color white, MaterialColor grey) {}
}
