import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My card"),
          centerTitle: true,
          backgroundColor: Colors.black12,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage("images/circle-cropped.png"),
                      radius: 70,
                    ),
                    Text(
                      "Julien Bolland",
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 150,
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Master student in Computer Science</>",
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "RobotoMono",
                      ),
                    ),
                    Text(
                      "@ULiège",
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "RobotoMono",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 150,
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    Card(
                      elevation: 25,
                      color: Colors.black12,
                      margin: EdgeInsets.fromLTRB(50, 20, 50, 0),
                      child: ListTile(
                          leading: Icon(
                            Icons.phone,
                            color: Colors.black,
                          ),
                          title: Text(
                            "0000/44/88/99",
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                      ),
                    ),
                    Card(
                      elevation: 25,
                      color: Colors.black12,
                      margin: EdgeInsets.fromLTRB(50, 20, 50, 0),
                      child: ListTile(
                        leading: Icon(
                          Icons.mail,
                          color: Colors.black,
                        ),
                        title: Text(
                          "test@mail.com",
                          style: TextStyle(
                            fontSize: 15
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
        ),
      ),
    );
  }
}
