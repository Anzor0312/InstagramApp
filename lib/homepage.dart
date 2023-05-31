import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
        children: [
        Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
    child:Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      
    const Text("Stories"),
    Row(
    children: const [
    Icon(Icons.arrow_right),Text("Watch all")
    ],
    )
    ],
    ),
    ),
    SizedBox(
    height: 90,
    width: double.infinity,
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemBuilder: (context,index){
    return Padding(
    padding:EdgeInsets.symmetric(horizontal: 7),
    child: Column(

    children: [

    CircleAvatar(
    radius: 30,
    backgroundImage: NetworkImage("https://source.unsplash.com/random/$index"),
    ),
    Text(names[index],style: TextStyle(fontSize: 10,color: Colors.black)),

    ],
    )
    );

    },itemCount: names.length,


    ),
    ),
    const   Divider(thickness: 5),
    SizedBox(
    height: 535,
    width: 400,
    child: ListView.builder(itemBuilder: (context, index) {
    return SizedBox(

    width: 500,
    child: Padding(padding: EdgeInsets.only(bottom: 15),
    child:  Column(
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    CircleAvatar(
    radius: 30,
    backgroundImage: NetworkImage("https://source.unsplash.com/random/$index"),
    ),
    Row(
    children: const [
    Icon(Icons.account_box)
    ],
    )
    ],
    ),
    Container(
    width: 400,
    height: 450,
    decoration: BoxDecoration(
    image: DecorationImage(image: NetworkImage("https://source.unsplash.com/random/$index"),
    fit: BoxFit.fill
    )
    ),
    ),
    Row(

    children: const [
    Icon(Icons.heart_broken),
    SizedBox(
    width: 10,
    ),
    Icon(Icons.mode_comment_outlined),
    SizedBox(
    width: 10,
    ),
    Icon(Icons.send),
    SizedBox(
    width: 270,
    ),
    Icon(Icons.bookmark),

    ],
    )
    ],

    ),
    ),
    );
    },
    ),
    )


    ],
      ),
    );

  }
  List<String>names=["Anzor","Shahzod","G'ayrat","Avazbek","Ahadjon","Shoxrux","Dilmira","Husanboy","Elyor","Doston"];
}
