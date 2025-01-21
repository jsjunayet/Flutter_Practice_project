
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
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60),
      backgroundColor: Colors.indigo,
      foregroundColor: Colors.white,
    );
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
     drawer: Drawer(
       backgroundColor: Colors.white,
       child: ListView(
         children: [
           DrawerHeader(
             padding: EdgeInsets.all(0),
               child:UserAccountsDrawerHeader(
             decoration: BoxDecoration(color: Colors.indigo),
               accountName: Text("Junayet Shiblu"),
               accountEmail: Text("junayetshiblu0@gmail.com"),
                 currentAccountPicture: CircleAvatar(
                   backgroundImage: NetworkImage("https://i.ibb.co.com/5Ymn1Z9/IMG-1168.jpg"),

                 )
           )
           ),
           ListTile(
             leading: Icon(Icons.home),
             title: Text("Home"),
             onTap: (){
               MySnackBar("home page", context);
             },
           ),
           ListTile(
             leading: Icon(Icons.login),
             title: Text("Login"),
             onTap: (){
               MySnackBar("Login page", context);
             },
           ),
           ListTile(
             leading: Icon(Icons.sign_language_sharp),
             title: Text("Register"),
             onTap: (){
               MySnackBar("Register page", context);
             },
           ),
         ],
       ),

     ),
     body: Column(
       children: [
         Padding(padding: EdgeInsets.all(10), child:TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText:"frist Name"),)),
         Padding(padding: EdgeInsets.all(10), child:TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText:"Last Name"),)),
         Padding(padding: EdgeInsets.all(10), child:TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText:"email"),)),
         Padding(padding: EdgeInsets.all(10), child:TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText:"Password"),)),
         Padding(padding: EdgeInsets.all(10), child:ElevatedButton(onPressed: (){}, child: Text("Submit"), style: buttonStyle,))
       ],
     )
   );
  }

}