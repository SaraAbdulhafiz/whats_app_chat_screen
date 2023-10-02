import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/person.jpg'),
            ),
            SizedBox(
              width: 15,
            ),
            Text('Person'),
          ],
        ),
        actions: [
          Icon(Icons.video_camera_back),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.phone),
          SizedBox(
            width: 6,
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: Stack(
        children: [
          Image(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/person1.jpg'),
                      ),
                      SizedBox(width: 8),
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Text(
                          'This My First Message',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.end ,
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Text(
                          'This My Second Message',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/person2.jpg'),
                      ),
                    ],
                  ),
                ),

                Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.emoji_emotions_outlined , color: Colors.white),
                          suffixIcon: Icon(Icons.attach_file_outlined , color: Colors.white),
                          fillColor: Colors.black38,
                          filled: true,
                          hintText: 'Type a Message... ',
                          hintStyle: TextStyle(color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 4,),
                    FloatingActionButton(
                      backgroundColor: Colors.black,
                      shape:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ) ,
                      onPressed: (){},
                      child: Icon(Icons.mic),

                    ),

                  ],
                ),
                SizedBox(height: 10),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
