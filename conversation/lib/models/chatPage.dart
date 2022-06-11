import 'package:flutter/cupertino.dart';
import 'package:conversation/screens/chatPage.dart';

import 'chatUsersModel.dart';

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}
  List<ChatUsers> chatUsers = [

    ChatUsers(text: "Jane Russel", secondaryText: "Awesome Setup", image: "images/userImage1.JPG", time: "Now", messageText: 'hmm', imageURL: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/160/apple/81/male-technologist-type-1-2_1f468-1f3fb-200d-1f4bb.png', name: 'Rex'),
    ChatUsers(text: "Glady's Murphy", secondaryText: "That's Great", image: "images/userImage2.jpeg", time: "Yesterday", messageText: 'hmm', imageURL: 'https://image.emojisky.com/802/39802-middle.png', name: 'Flash'),
    ChatUsers(text: "Jorge Henry", secondaryText: "Hey where are you?", image: "images/userImage3.jpeg", time: "31 Mar", messageText: 'hmm', imageURL: 'https://cdn-0.emojis.wiki/emoji-pics/facebook/man-technologist-facebook.png', name: 'Someone'),
    ChatUsers(text: "Philip Fox", secondaryText: "Busy! Call me in 20 mins", image: "images/userImage4.jpeg", time: "28 Mar", messageText: 'hmm', imageURL: 'https://cdn.emojidex.com/emoji/seal/male_technologist.png?1483041606', name: 'Yeyy!'),
    ChatUsers(text: "Debra Hawkins", secondaryText: "Thankyou, It's awesome", image: "images/userImage5.jpeg", time: "23 Mar", messageText: 'hmm', imageURL: 'https://cdn-icons-png.flaticon.com/512/149/149071.png', name: 'some'),
    ChatUsers(text: "Jacob Pena", secondaryText: "will update you in evening", image: "images/userImage6.jpeg", time: "17 Mar", messageText: 'hmm', imageURL: 'https://cdn-icons-png.flaticon.com/512/149/149071.png', name: 'some'),
    ChatUsers(text: "Andrey Jones", secondaryText: "Can you please share the file?", image: "images/userImage7.jpeg", time: "24 Feb", messageText: 'hmm', imageURL: 'https://cdn-icons-png.flaticon.com/512/149/149071.png', name: 'some'),
    ChatUsers(text: "John Wick", secondaryText: "How are you?", image: "images/userImage8.jpeg", time: "18 Feb", messageText: 'hmm', imageURL: 'https://cdn-icons-png.flaticon.com/512/149/149071.png', name: 'some'),

  ];
