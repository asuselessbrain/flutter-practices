import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(debugShowCheckedModeBanner: false,home: HomeActivity());
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      // padding: const EdgeInsets.all(20),
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );

    ButtonStyle buttonStyle2 = TextButton.styleFrom(
      backgroundColor: Colors.red,
      foregroundColor: Colors.white,

      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5))
      )
    );
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,title: const Text("Alart Dialog"),),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: (){}, style: buttonStyle2, child: const Text("text Button")),
          ElevatedButton(onPressed: (){},style: buttonStyle, child: const Text("Elevated Button"),),
          OutlinedButton(onPressed: (){}, child: const Text("Outline Button"))
        ],
      ),
    );
  }

}
