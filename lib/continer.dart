import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(),
        title :const Text("Telegram"),
        actions: [Icon(Icons.search)],
      ),
      body:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(

                height: 200,
                width: 200,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                    const Text("Hello World"),
                   ],
                 ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.limeAccent,
                  border: Border.all(
                    color: Colors.black,
                    width: 7
                  )
                ),

              ),
            ],
          )

        ],
      ),


    );
  }
}