import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("anzor_of.ficial"),
       actions: const [Icon(Icons.account_balance)],
        leading: CircleAvatar(),

      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 3,vertical: 3),
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage("https://source.unsplash.com/random/$index"),
            fit: BoxFit.fill)
          ),
        );
      },),
    );
  }
}
