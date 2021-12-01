import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Psaved ChatApp',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const ChatApp(title: 'ChatApp'),
    );
  }
}

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/4132305/pexels-photo-4132305.jpeg?cs=srgb&dl=pexels-ketut-subiyanto-4132305.jpg&fm=jpg"),
          ),
        ),
        title: const Text(
          "ChatApp",
          style: TextStyle(
            color: Colors.teal,
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.teal,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_horiz_outlined,
            color: Colors.teal,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: const [
          ChatWidget(
            name: "Todor Essen",
            message: "can't wait to see you",
            time: "11:00am",
            image:
                "https://images.pexels.com/photos/678785/pexels-photo-678785.jpeg?cs=srgb&dl=pexels-sebastian-libuda-678785.jpg&fm=jpg",
          ),
          ChatWidget(
            name: "Charlize Theron",
            message: "yeah, sure",
            time: "11:10am",
            image:
                "https://images.pexels.com/photos/4348798/pexels-photo-4348798.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          ),
          // Card(
          //   color: Colors.teal,
          //   elevation: 4,
          //   child: Padding(
          //     padding: const EdgeInsets.all(3.0),
          //     child: ListTile(
          //       leading: const CircleAvatar(
          //         radius: 25,
          //         backgroundImage: NetworkImage(
          //             "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          //       ),
          //       title: const Text(
          //         "Charles Balls",
          //         style: TextStyle(color: Colors.white),
          //       ),
          //       subtitle: Row(
          //         children: const [
          //           Icon(
          //             Icons.done_all,
          //             color: Colors.blue,
          //           ),
          //           SizedBox(width: 5.0),
          //           Text("Hello"),
          //         ],
          //       ),
          //       trailing: const Text("11:30am"),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    Key? key,
    required this.name,
    required this.message,
    required this.time,
    required this.image,
  }) : super(key: key);

  final String name;
  final String message;
  final String time;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.teal,
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(image),
          ),
          title: Text(name),
          subtitle: Row(
            children: [
              const Icon(
                Icons.done_all,
                color: Colors.blue,
              ),
              const SizedBox(width: 5.0),
              Text(message),
            ],
          ),
        ),
      ),
    );
  }
}
//const Center(
      //   child: ,
      //   // CircleAvatar(
      //   //   radius: 60,
      //   //   backgroundColor: Colors.black,
      //   //   backgroundImage: NetworkImage(
      //   //       "https://images.pexels.com/photos/1771383/pexels-photo-1771383.jpeg?cs=srgb&dl=pexels-nappy-1771383.jpg&fm=jpg"),
      //   // ),
      //   //  Text(
      //   //   "Hello Prysla Saved",
      //   //   style: TextStyle(
      //   //     color: Colors.orange,
      //   //   ),
      //   // ),
      // ),