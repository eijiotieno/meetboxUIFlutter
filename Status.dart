import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meetboxui/user_info.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          7,
          (index) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(UserItems[index].status),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        radius: 15,
                        backgroundImage:
                            AssetImage(UserItems[index].profilePic),
                      ),
                      title: Text(
                        UserItems[index].userName,
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
