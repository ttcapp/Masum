import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
var imigesrci="https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_960_720.jpg";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyHomePage(
      ),
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
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My First App"),
      ),
      body: Container(
        height: height/1,
        width: width/1,
        color: Colors.red ,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text("this is my app",
                  style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,
                    backgroundColor: Colors.black,color: Colors.pinkAccent,
                  ),
                ),
                Image.asset("assets/image/image.jpg"),
                Image.asset("assets/image/image1.jpeg"),
                Image.asset("assets/image/images2.jpg"),
                Image.asset("assets/image/images3.jpg"),
                Image.asset("assets/image/images4.jpg"),

                Image.network(imigesrci),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
