import 'package:flutter/material.dart';
import 'Screen7.dart';


class Chat {
  final String name;
  final String message;
  final String time;
  final int unread;
  final Color avatarColor;

  Chat({
    required this.name,
    required this.message,
    required this.time,
    this.unread = 0,
    required this.avatarColor,
  });
}

class Screen6 extends StatefulWidget {
  @override
  State<Screen6> createState() => _Screen6State();
}
class _Screen6State extends State<Screen6> {
  final List<Chat> chats = [
    Chat(
      name: 'Abesson Nature',
      message: 'boss, are we still meeting today?',
      time: '20:32',
      unread: 6,
      avatarColor: const Color.fromARGB(255, 248, 32, 201),
    ),
    Chat(
      name: 'Bino luxury',
      message: 'should i way bill...',
      time: '19:02',
      unread: 0,
      avatarColor: const Color.fromARGB(255, 60, 238, 220),
    ),
    Chat(
      name: 'Christabel twins',
      message: 'good to but am...',
      time: 'Yesterday',
      unread: 0,
      avatarColor: const Color.fromARGB(255, 219, 6, 6),
    ),
    Chat(
      name: 'lapsoso akposki',
      message: 'let know in deatails😍🤣.',
      time: 'Yesterday',
      unread: 0,
      avatarColor: const Color.fromARGB(255, 36, 138, 75),
    ),
    Chat(
      name: 'Chazzy ❤️💕',
      message: '😊😊 that was hilarious!',
      time: 'Sun',
      unread: 1,
      avatarColor: const Color.fromARGB(255, 157, 6, 184),
    ),
    Chat(
      name: 'Big Nature',
      message: 'Project meeting is rescheduled.',
      time: 'Mon',
      unread: 0,
      avatarColor: const Color.fromARGB(255, 248, 233, 14),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        color:  Color.fromARGB(255, 252, 214, 244),
        child: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:  EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color:  Color.fromARGB(255, 245, 244, 247),
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 246, 250, 246).withOpacity(0.03),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child:  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search, color:  Color.fromARGB(255, 22, 5, 5)),
                      hintText: 'Search messages...',
                      hintStyle: TextStyle(color:  Color.fromARGB(255, 31, 6, 6)),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                 SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Messages',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.amber.shade100,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'chats 6',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber.shade900,
                        ),
                      ),
                    ),
                  ],
                ),
                 SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: chats.length,
                    itemBuilder: (context, index) {
                      final chat = chats[index];
                      return Container(
                        margin:  EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247, 243, 243),
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundColor: chat.avatarColor,
                              child: Text(
                                chat.name[0],
                                style:  TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(width: 14),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    chat.name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black87,
                                    ),
                                  ),
                                   SizedBox(height: 4),
                                  Text(
                                    chat.message,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style:  TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                           SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  chat.time,
                                  style:  TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 6),
                                chat.unread > 0
                                    ? Container(
                                        padding: EdgeInsets.all(6),
                                        decoration:  BoxDecoration(
                                          color: Colors.deepOrange,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Text(
                                          '${chat.unread}',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                     :SizedBox(height: 18),
                                     IconButton(
  icon:  Icon(Icons.arrow_forward_ios, color: Colors.indigo),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Screen7(),
      ),
    );
  },
)

                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}