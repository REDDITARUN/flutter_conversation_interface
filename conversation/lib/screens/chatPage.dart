import 'dart:io';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:conversation/models/chatPage.dart';
import 'package:conversation/widgets/conversationList.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/services.dart' show rootBundle;


class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(

              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border.fromBorderSide(BorderSide(color: Colors.grey, width: 1)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 3,
                        offset: const Offset(0, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: const Color(0xffffffff),
                  ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: <Widget>[

                    const SizedBox(
                      width: 330,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search,
                            color: Colors.black),
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.black),

                          //prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
                       //   filled: true,
                         // fillColor: Colors.grey.shade100,
                          //contentPadding: EdgeInsets.all(8),
                        ),
                      ),
                    ),



                    CircleAvatar(

                      backgroundImage: NetworkImage(
                          "https://img.icons8.com/bubbles/2x/user-male.png"),
                        backgroundColor: Colors.white60,
                        child: GestureDetector(
                          onTap: () {

                            showDialog(

                              context: context,
                              builder: (context) {

                                return Dialog(
                                  backgroundColor: Colors.black.withOpacity(0.3),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  insetPadding: EdgeInsets.all(5),
                                  elevation: 16,
                                  child: BlurryContainer(
                                    width:90,

                                    child: ListView(
                                      shrinkWrap: true,
                                      children: <Widget>[
                                        SizedBox(height: 20),
                                        _buildleader('https://img.icons8.com/bubbles/2x/user-male.png', 'Tarun', 'tarun001@gmail.com'),
                                        SizedBox(height: 20),
                                        Container(height: 2, color: Colors.white12),
                                        _buildRow('https://cdn-icons-png.flaticon.com/512/1622/1622216.png', 'Status'),
                                        _buildRow('https://cdn-icons-png.flaticon.com/512/4270/4270183.png', 'Snooze Notifications'),
                                        SizedBox(height: 12),
                                        Container(height: 2, color: Colors.white12),
                                        SizedBox(height: 12),
                                        _buildRow('https://cdn-icons-png.flaticon.com/512/747/747968.png', 'Invitation'),
                                        _buildRow('https://cdn-icons-png.flaticon.com/512/759/759629.png', 'Archived'),
                                        SizedBox(height: 12),
                                        Container(height: 2, color: Colors.white12),
                                        _buildRow('https://cdn-icons-png.flaticon.com/512/747/747914.png', 'Setting'),
                                        _buildRow('https://cdn-icons-png.flaticon.com/512/1294/1294451.png', 'Help & Feedback'),
                                        SizedBox(height: 12),
                                        Container(height: 2, color: Colors.white12),
                                        _buildingRow('Privacy Policy * Terms Of Service'),
                                        SizedBox(height: 12),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),

                  ],
                ),
                ),
              ),
            ),

            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3)?true:false,
                );
              },
            ),],
        ),
      ),
    );

  }
}
Widget _buildleader(String imageAsset, String name, String desc) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      children: <Widget>[
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            CircleAvatar(backgroundImage: NetworkImage(imageAsset),backgroundColor: Colors.white, radius: 30,),
            SizedBox(width: 10),
                new Text(name,maxLines: 1, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 70, top: 0),
              child: Text(desc, style: TextStyle(fontSize: 15, color: Colors.white),  textAlign: TextAlign.right),
            ),
          ],
        ),
      ],
    ),
  );
  GestureDetector(
    onTap: (){
    },
  );
}
Widget _buildRow(String imageAsset, String name) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      children: <Widget>[

        SizedBox(height: 12),

        Row(
          children: <Widget>[
            CircleAvatar(backgroundImage: NetworkImage(imageAsset),backgroundColor: Colors.white.withOpacity(0),),
            SizedBox(width: 12),
            Text(name, style: TextStyle(fontSize: 17, color: Colors.white),),
            Spacer(),

          ],
        ),
      ],
    ),
  );
}
Widget _buildingRow(String name) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      children: <Widget>[
        SizedBox(height: 12),
        Row(
          children: <Widget>[
            SizedBox(width: 40),
            Text(name, style: TextStyle(fontSize: 10, color: Colors.white), textAlign: TextAlign.center,),
          ],
        ),
      ],
    ),
  );

}