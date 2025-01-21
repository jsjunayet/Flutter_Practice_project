
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return  MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      color: Colors.greenAccent,
      debugShowCheckedModeBanner: false,
      home: HomeActivity());
  }

}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("MY app"),
       backgroundColor: Colors.indigo,
       elevation: 5.0,
       centerTitle: true,

     ),
     body: Text("hello wrold"),
   );
  }

}