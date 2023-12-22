import 'package:connect_sales/dummy%20data/dummy_messages.dart';
import 'package:connect_sales/utils/helping_widgets/listTile_messages.dart';
import 'package:flutter/material.dart';

import 'chat_screen.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyMessages.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return  ChatScreen(name: dummyMessages[index].name,);
              },),);
            },
            child: ListTileMessages(
                name: dummyMessages[index].name,
                image: dummyMessages[index].image,
                isSeen: dummyMessages[index].isSeen,
                lastMessage: dummyMessages[index].lastMessage,
                time: dummyMessages[index].time),
          );
        });
  }
}
