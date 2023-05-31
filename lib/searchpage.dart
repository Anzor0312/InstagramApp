import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({Key? key}) : super(key: key);

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              TextFormField(

                autocorrect: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    prefix: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.edit,color: Colors.blue),
                    labelStyle: const TextStyle(fontSize: 30.0,color: Colors.blue),
                    labelText: "search",
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(borderRadius:
                    BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.blue))
                ),
              ),

            ],
          ),)
    );
  }
}