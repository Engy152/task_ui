import 'package:flutter/material.dart';
import 'package:trainning/model/class_model.dart';
import 'package:trainning/modules/user2.dart';
import 'package:trainning/modules/user3.dart';
import 'package:trainning/modules/user1.dart';
import 'package:trainning/modules/user4.dart';
import 'package:trainning/modules/user5.dart';

class design extends StatefulWidget
{
  @override
  State<design> createState() => _designState();
}
class _designState extends State<design> {
  List<Widget> screns =
  [
    user1(),
    user2(),
    user3(),
    user4(),
    user5(),


  ];
  List<UserModel> users =
  [
    UserModel(name: "foo01"),
    UserModel(name: "foo02"),
    UserModel(name: "foo03"),
    UserModel(name: "foo04"),
    UserModel(name: "foo05"),
    UserModel(name: "foo06"),
    UserModel(name: "foo07"),
    UserModel(name: "foo08"),
    UserModel(name: "foo09"),
    UserModel(name: "foo01"),
    UserModel(name: "foo02"),
    UserModel(name: "foo03"),
    UserModel(name: "foo04"),
    UserModel(name: "foo05"),
    UserModel(name: "foo06"),
    UserModel(name: "foo07"),
    UserModel(name: "foo08"),
    UserModel(name: "foo09"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(
        title: const Text(
          'Categories',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
       return buildItem(users[index],index);
      },  itemCount: users.length,
        separatorBuilder: (context,index)
        =>
          Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
         ),
    );
  }
  Widget buildItem (UserModel user, int index) => GestureDetector(
       onTap: ()
       {
         Navigator.push(context, MaterialPageRoute(builder: (context)=>screns[index]));
       },
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
          width: double.infinity,
          child: Row
            (
            children: [
              const CircleAvatar(
                backgroundColor: Colors.black,
                radius: 25.0,
              ),
              const SizedBox(width: 15.0,),
              Text(
                "${user.name}",
                style: const TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
    ),
       ),

  ) ;
}