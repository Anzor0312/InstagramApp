import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Instagram",style: TextStyle(color: Colors.black),
    ),
    actions:const [
    Icon(
    Icons.send,
    color: Colors.black,)
    ],
    centerTitle: true,
    leading:const Icon(
    Icons.camera_alt_outlined,
    color: Colors.black,
    ),
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children:  [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.camera,size: 100,)],
          ),
        ],
      ),

    );
  }
}
