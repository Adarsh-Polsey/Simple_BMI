import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  var height = TextEditingController();
  var weight = TextEditingController();
  String result = '';

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          centerTitle: true,
          backgroundColor: Color(0xFF0B2447),
          elevation: 1,
        ),
        backgroundColor: Color(0xFF19376D),
        body:
            // Container(width:double.infinity,height:double.infinity,decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xFF19376D),Color(0xFF576CBC)])),),
            Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFF535C91), Color(0xFF9290C3)]),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    cursorColor: Color(0xBB1B1A55),
                    controller: weight,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Enter your Weight(Kg)",
                        labelStyle: TextStyle(color: Color(0xBB1B1A55))),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFF535C91), Color(0xFF9290C3)]),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    cursorColor: Color(0xBB1B1A55),
                    controller: height,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Enter your Height(m)",
                        labelStyle: TextStyle(color: Color(0xBB1B1A55))),
                  )),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    elevation: 1,
                    primary: Colors.white10,
                  ),
                  onPressed: () {
                    setState(() {
                      double value = 0;
                      double Height = double.parse(height.text);
                      double Weight = double.parse(weight.text);
                      if (Height !=null) {
                        value = Weight / (Height * Height);
                        result = "Your BMI is $value";
                      } else {
                        result =
                            "Please enter your height and weight correctly ";
                      }
                    });
                  },
                  child: Text("Click for Result",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 15,
                          fontWeight: FontWeight.bold))),
              SizedBox(
                height: 40,
              ),
              Text(result,
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ));
  }
}
