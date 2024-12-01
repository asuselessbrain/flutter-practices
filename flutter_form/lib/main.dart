import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
        home: HomeActivity(),
      debugShowCheckedModeBanner: false,
    );
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.blue[400],
      foregroundColor: Colors.white,
      minimumSize: const Size(double.infinity, 60),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      )
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: const Text("Simple Form", style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(labelText: "First Name", border: OutlineInputBorder()),),),
          const Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(labelText: "Last Name", border: OutlineInputBorder()),),),
          const Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(labelText: "Email", border: OutlineInputBorder()),),),
          Padding(padding: const EdgeInsets.all(10), child: ElevatedButton(onPressed: (){}, style: buttonStyle, child: const Text("Submit"),),)
        ],
      ),

    );

  }

}