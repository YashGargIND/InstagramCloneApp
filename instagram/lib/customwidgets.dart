import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/users.dart';

 Container Post(PostData post) {
    return Container(
      child: Column(
            children: [
//------------------------------userinfo bar-----------------------------------------
              ListTile(
                shape: OutlineInputBorder(borderSide: BorderSide(
                  width: 1,
                  color: Colors.grey.shade300)),
                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 9),
                tileColor: Colors.white,
                leading: DpBubble(User(post.storyseen, post.username, post.dplink), 18),
                title: Text(post.username),
                trailing: Icon(Icons.more_horiz),
              ),
//---------------------------------image---------------------------------------------
              Container(child: Image(image: NetworkImage(post.postlink),)),
//---------------------------------Like bar-------------------------------------------            
              Container(
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                    SizedBox(height: 50, width: 10,),
                    Container(
                      width: 27,
                      child: Icon(Icons.favorite_border_rounded,
                      size: 32,)
                              ),
                    SizedBox(width: 25,),
                    Container(
                      width: 34,
                      color: Colors.white,
                      child:Icon(CupertinoIcons.chat_bubble,
                      size: 30,)
                      ),
                    SizedBox(width: 22,),
                    Container(
                      width: 25,
                      child: Image(
                        image: AssetImage('assets/dm.png',),),),
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      width: 25,
                      child: Image(
                        image: AssetImage('assets/flag.png',),),),
                    SizedBox(width: 15,)
                  ],),
              ),
//-------------------------------Caption---------------------------------------------
              Container(
                color: Colors.white,
                child: Container(
                  color: Colors.white,
                  width: 400 ,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 4, 12, 6),
                    child: Container(
                      color: Colors.white,
                      child: RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          children: [
                            TextSpan(text: post.username,
                            style: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),),
                            TextSpan(text: post.caption,
                            style: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.black87),),
                               TextSpan(text: '\n\n',
                            style: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.black87),),
                               TextSpan(text: 'View all ${post.comments} comments',
                            style: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.black45),),
                                TextSpan(text: '\n',
                            style: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.black87),),

                          ] ),
                      ),
                    ),
                  )
                ))
            ],
          ),
    );
  }

  



  

  Container StoryBubble(User user) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
        child: Column(
          children: [
            Column(
              children: [
                DpBubble(user, 34.0),
                SizedBox(height: 3,),
                Text(user.username,

                style: TextStyle(
                  fontSize: 15,
                ),)
              ],
            ),
                  

          ],
        ),
      ),
    );
  }

      Container DpBubble(User user, double rad){
        if(user.storySeen){
            return Container(
              width: (2.0*rad +2)+2,
              decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                      width: (1),),),

              child: Container(
                width: (2.0*rad + 2),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(user.dplink),
                    backgroundColor: Colors.grey[200],
                    radius: rad+1,),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: (rad/10)),)
                    ),
            );}
        else{
          return Container(
              width: (2.0*rad +2)+2,
              decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.pink,
                      width: (rad/10)),),
              child: Container(
                width: (2.0*rad +2),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(user.dplink),
                    backgroundColor: Colors.grey[200],
                    radius: rad,),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: (rad/10)),)
                    ),
            );}
        }