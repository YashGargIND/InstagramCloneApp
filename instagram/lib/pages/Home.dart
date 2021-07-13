import 'package:flutter/material.dart';
import 'package:instagram/users.dart';
import 'package:instagram/customwidgets.dart';
class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
//---------------------------------APPBAR------------------------------------------------
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        bottomOpacity: 1,
        shape: Border(bottom: BorderSide(color: Colors.grey.shade300, width: 1)),

        leading: Icon(
          Icons.camera_alt_outlined,
          color: Colors.black87,
          size: 30,),
        title:  Container(
                  child : Image(
                  image: AssetImage('assets/Instagram-Logo.png') ,),
                  height: 33,
                  ),
        centerTitle: true,
        actions: <Widget>[
          Container(
                  child : Image(
                  image: AssetImage('assets/igtv.png') ,),
                  width: 30,
                  ),
          SizedBox(width: 25),
           Container(
                  child : Image(
                  image: AssetImage('assets/dm.png') ,),
                  width: 30,
                  ),
      
        ],
      ),
//---------------------------------------STORY BAR--------------------------------------------
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
            margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
            height: 105.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: userdata.map((userdata) {
                  return StoryBubble(userdata);
                }).toList(),
              ),
            ),
    //-----------------------------------POSTS--------------------------------------------
            // Post(post[0]),
            // Post(post[1]),
            Column(
                  children: post.map((postdata) {
                    return Post(postdata);
                  }).toList(),),
          ],
        ),
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
      selectedItemColor: Colors.black87,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedFontSize: 0,
      iconSize: 30,
      items: [
        BottomNavigationBarItem(
          icon:  Icon(Icons.home,),
          label: 'home',),
        BottomNavigationBarItem(
          icon:  Icon(Icons.search,),
          label: 'search'),
        BottomNavigationBarItem(
          icon:  Icon(Icons.add_box_outlined ,),
          label: 'add'),
        BottomNavigationBarItem(
          icon:  Icon(Icons.favorite_border_outlined,),
          label: 'home'),
        BottomNavigationBarItem(
          icon:  DpBubble(userdata[0], 15),
          label: 'home')

      ],)
      
    );
  }

}