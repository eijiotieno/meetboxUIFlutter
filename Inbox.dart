import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meetboxui/user_info.dart';

class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 14,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.42,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(UserItems[index].profilePic),
                    ),
                    trailing: Icon(Icons.chat,color: Colors.grey[300],),
                    title: Text(
                      UserItems[index].userName,
                      style: TextStyle(
                        color: Colors.grey[300],
                      ),
                    ),
                    subtitle: Text(
                      UserItems[index].timeStamp,
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
