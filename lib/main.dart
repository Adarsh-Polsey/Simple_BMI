import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var height=TextEditingController();
  var weight=TextEditingController();
  double result=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black45,
        body: Column(
          children: [
            Container(color: Colors.grey,child: TextField(controller:height ,decoration: InputDecoration(hintText: 'Weight(Kg)',hintStyle: TextStyle(color: Colors.white)),),),
            SizedBox(height: 10,),
            Container(color: Colors.grey,child: TextField(controller: weight,decoration: InputDecoration(hintText: 'Height(m)',hintStyle: TextStyle(color: Colors.grey)),),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              setState((){
                result=double.parse(height.text)/double.parse(weight.text);
              });
            }, child: Text("Calculate")),
            SizedBox(height: 10,),
            Expanded(child: Container(child: Text(result.toString()),))
          ],
        ),
      ),
    );
  }
}
