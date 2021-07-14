import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/users.dart';




bool liked = false;
class Postt extends StatefulWidget {

  final PostData post;


  const Postt({required this.post }) ;

  

  @override
  _PosttState createState() => _PosttState();
}

class _PosttState extends State<Postt> {
  @override
  Widget build(BuildContext context) {
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
                leading: DpBubble(User(widget.post.storyseen, widget.post.username, widget.post.dplink), 18),
                title: Text(widget.post.username),
                trailing: Icon(Icons.more_horiz),
              ),
//---------------------------------image---------------------------------------------
              Container(child: Image(image: NetworkImage(widget.post.postlink),)),
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
                      child: IconButton(
                        icon: Icon( 
                          liked ? Icons.favorite : (Icons.favorite_border_rounded), 
                          size: 32, 
                          color: liked ? Colors.red : Colors.black87),
                      onPressed: () {
                        setState(() {
                        liked = !liked;});
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              liked ? 'Thanks for liking':'You have disliked',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16),),
                            backgroundColor: Colors.grey[100],
                            duration: Duration(milliseconds: 400),
                            ));
                      },
                      padding: EdgeInsets.all(0),)
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
                            TextSpan(text: widget.post.username,
                            style: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),),
                            TextSpan(text: widget.post.caption,
                            style: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.black87),),
                               TextSpan(text: '\n\n',
                            style: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.black87),),
                               TextSpan(text: 'View all ${widget.post.comments} comments',
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



class DmBox extends StatelessWidget {

  final MessageData messageData;

  const DmBox({required this.messageData}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      child: ListTile(
        dense: false,
        visualDensity: VisualDensity(vertical: 0),
       shape: OutlineInputBorder(borderSide: BorderSide(
         width: 1,
         color: Colors.white)),
       contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
       tileColor: Colors.white,
       leading: DpBubble(User(messageData.storyseen, messageData.username, messageData.dplink), 29),
       title: Text(messageData.username,
                   style: TextStyle(fontSize: 16,
                   fontWeight: FontWeight.normal,
                   color: Colors.black87),),
        subtitle: Container(
          height: 19,
          child: Text(messageData.lastMessage,
                     style: TextStyle(fontSize: 16,
                     fontWeight: FontWeight.normal,
                     color: Colors.grey[500]),),
        ),
       
       trailing: Container(
         width: 80,
         child: Row(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Column(
               children: [
                 SizedBox(height: 33, width: 1),
                 Text(messageData.time,
                 style: TextStyle(fontSize: 15,
                         fontWeight: FontWeight.normal,
                         letterSpacing: 0,
                         color: Colors.grey[500]),),
               ],
             ),
             SizedBox(width: 10,),
             Icon(Icons.camera_alt_outlined,
             size: 30,),
             SizedBox(width: 5,),
           ],
         ),
       ),
                ),
    );
  }
}

Container ImageTile(String imageLink) {
    return Container(
              padding: const EdgeInsets.all(0),
              child: Image(image: NetworkImage(imageLink),),
            );
  }

  Container CategoryButton(String category) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
        child: Container(
                   height: 37,
                     child: TextButton(
                              child: Text(category),
                              onPressed: (){},
                              // autofocus: false,
                              style: TextButton.styleFrom(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0,
                                  color: Colors.white,
                                  ),    
                                primary: Colors.black,
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  side: BorderSide(
                                    color: Colors.grey.shade400,
                                    width: 1,),
                                  ),
                                
                                ),
                            ),
                   ),
      ),
    );
  }