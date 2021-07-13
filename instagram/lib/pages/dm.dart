import 'package:flutter/material.dart';
import 'package:instagram/users.dart';
import 'package:instagram/customwidgets.dart';
class DM extends StatefulWidget {
  const DM({ Key? key }) : super(key: key);

  @override
  _DMState createState() => _DMState();
}

class _DMState extends State<DM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "__its.yash__",
              style: TextStyle(
                color : Colors.black,
              ),),
                Container(
                child: Icon(Icons.expand_more,
                color: Colors.black,
                size: 35),
              ),
          ],
        ),
        elevation: 0,
        centerTitle: true,
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Icon(Icons.add,
                color: Colors.black,
                size: 35),
              ),
              SizedBox(width : 10)],),
            ]
        ),
      
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              SizedBox(height: 10, width : 5000),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: Container(
                    height: 36,
                    // color: Colors.grey.shade300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade200,
                       ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(
                              width: 11,
                              color: Colors.grey.shade400,),
                              borderRadius: BorderRadius.circular(12)),
                        prefixIcon: Icon(Icons.search),
                        labelText: "Search",
                        labelStyle: TextStyle(
                          color: Colors.grey.shade500
                        )
                      ),
                    ),
                  ),
              ),
              Column(
                  children: messages.map((messagedata) {
                    return DmBox(messageData: messagedata);
                  }).toList(),),
          ],
        ),
      )
      
    );
  }
}

