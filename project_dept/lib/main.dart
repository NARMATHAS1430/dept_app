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
    'Select Type',
    'Medical',
    'Function',
    'Emergency',
    'Personal',
    'Others',
  ];
  String dropdownValue = 'Select Type';

  @override
  Widget build(BuildContext context) {
    var host;
    var child;

    return Scaffold(
      appBar: AppBar(
        title: Text('Apply Leave'),
        titleTextStyle: TextStyle(
          fontFamily: 'Roboto',
          color: Color.fromARGB(255, 44, 47, 90),
          fontSize: 21.0,
          fontWeight: FontWeight.bold,
        ),
        elevation: 10,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
            height: 500,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white70),
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                          width: 5,
                        ),
                        // ignore: prefer_const_constructors
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            "Type",
                            style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              color: Colors.black,
                            ),
                          ),
                        ),

                        DropdownButton<String>(
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 25,
                          isExpanded: true,
                          underline: SizedBox(
                            height: 5,
                            width: 20,
                          ),
                          focusColor: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Roboto',
                            fontSize: 14,
                          ),
                          value: dropdownValue,
                          items: items
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                                value: value, child: Text(value));
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue ?? '';
                            });
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Reason",
                            style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              color: Colors.black,
                            ),
                          ),
                        ),

                        child = Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.all(8.0),
                                    ),
                                    hintText: "Select Reason",
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            new Radius.circular(10.0))),
                                    labelStyle: TextStyle(color: Colors.white)),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                                controller: host,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Empty value";
                                  }
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  "Number of days",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              child = Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.all(8.0),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                new Radius.circular(10.0))),
                                        labelStyle:
                                            TextStyle(color: Colors.white)),
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                    controller: host,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Empty value";
                                      }
                                    },
                                  ),
                                  child = Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        width: 200,
                                        height: 50,
                                        child: RaisedButton(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 30),
                                          onPressed: () {
                                            print("RaisedButton");
                                          },
                                          color: Colors.blue,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30))),
                                          child: Text(
                                            "Submit",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ]),
                      ]),
                ))),
      ),
    );
  }
}

RaisedButton(
    {required EdgeInsets padding,
    required Function() onPressed,
    required MaterialColor color,
    required RoundedRectangleBorder shape,
    required Text child}) {}
