import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
String imgsrc1="https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_960_720.jpg";
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("(My FiRsT ApP)",style: TextStyle(
          fontSize: 29,fontWeight: FontWeight.bold,color: Colors.red,
        ),),
      ),
      body:Center(
        child: Container(
          height: height,
          width: width,
          color: Colors.amber,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text("My love Bangladesh",style: TextStyle(
                  fontSize: 35,fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
                ),
              ),
              Text("My love Bangladesh",style: TextStyle(
                fontSize: 45,fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
              ),
              Container(
                height: height/2,
                  width: width/1,
                  child: Image.network(imgsrc1)
              ),


            ],
          ),
        ),
      )
    );
  }
}

