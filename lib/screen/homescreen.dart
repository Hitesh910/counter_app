import 'package:flutter/material.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int i=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:  Scaffold(
      appBar:
        AppBar(
        title: Text("Counter app"),
          actions: [
            InkWell(
              onTap: (){
                setState(() {
                  i++;
                });
              },child: Icon(Icons.add),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  i--;
                });
              },child: Icon(Icons.remove),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  i=i*i;
                });
              },child: Icon(Icons.two_k_outlined),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  i=i*i*i;
                });
              },child: Icon(Icons.three_k_outlined),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  i=i*i*i*i;
                });
              },child: Icon(Icons.four_k_outlined),
            )
          ],
      ),
      body: Center(
        child: Text("$i",style: TextStyle(fontSize: 50),),
      ),
    ),);
  }
}
