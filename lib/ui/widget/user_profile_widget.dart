import 'package:flutter/material.dart';
import 'package:taskmanager1/ui/screens/Update_Profile_Screen.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateProfileScreen()));
      },
      contentPadding:EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 0
      ) ,
      leading:CircleAvatar(child: Icon(Icons.person)) ,
      tileColor: Colors.green,
      title:Text('Rabbil Hasan') ,
      subtitle:Text('rabbil@gmail.com') ,
    );
  }
}