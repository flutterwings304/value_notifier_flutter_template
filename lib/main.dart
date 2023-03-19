import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
ValueNotifier<String> myValue = ValueNotifier("No value Added");

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: myValue, 
      builder: (BuildContext context, value, Widget? child) { 
      return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
     }, );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Value Notifier Listener"),
      ),
      body: Center(child: Text(myValue.value,style: TextStyle(
        fontSize: 24,
        color:Colors.green,fontWeight:FontWeight.bold),),),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
       myValue.value="GeeksForGeeks is Best";
      setState(() {
        
      });
      }, label: Text(
        "Update Value Notifier Value"
      )),
    );
  }
}
