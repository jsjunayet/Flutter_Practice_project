
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
  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("MY app", style: TextStyle(
       color: Colors.white, // Text color set to white
       fontSize: 20, // Optional: Font size
       fontWeight: FontWeight.bold, // Optional: Font weight
     ),),
       backgroundColor: Colors.indigo,
       titleSpacing: 20,
       elevation: 50,
       actions: [
         IconButton(onPressed: (){MySnackBar('this is email',context);}, icon: Icon(Icons.email,color: Colors.white)),
         IconButton(onPressed: (){MySnackBar("this is number", context);}, icon: Icon(Icons.numbers,color: Colors.white)),
         IconButton(onPressed: (){MySnackBar("this is Setting", context);}, icon: Icon(Icons.settings,color: Colors.white)),
         IconButton(onPressed: (){MySnackBar("this is Search", context);}, icon: Icon(Icons.search, color: Colors.white, size: 30,))
       ],

     ),
     floatingActionButton: FloatingActionButton(
       elevation: 20,
       backgroundColor: Colors.indigo,
       child: Icon(Icons.add, color: Colors.white,),
       onPressed: (){
         MySnackBar("this is added botton", context);
       },
     ),
     bottomNavigationBar: BottomNavigationBar(
       currentIndex: 2,
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.info),label: "About"),
         BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")

       ],
       onTap: (int index){
         if(index==0){
           MySnackBar("Home page", context);
         }
         if(index==1){
           MySnackBar("About page", context);
         }
         if(index==2){
           MySnackBar("Profile page", context);
         }
       },

     ),
     body: Text("hello wrold"),
   );
  }

}