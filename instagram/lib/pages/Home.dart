import 'package:flutter/material.dart';
import 'package:instagram/users.dart';
import 'package:instagram/customwidgets.dart';
class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentindex = 0;

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
           InkWell(
             onTap: (){
               Navigator.of(context).pushNamed('/DM');
             },
             child: Container(
                    child : Image(
                    image: AssetImage('assets/dm.png') ,),
                    width: 30,
                    ),
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
                    return Postt(post: postdata);
                  }).toList(),),
          ],
        ),
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
      selectedItemColor: Colors.black87,
      unselectedItemColor: Colors.black,
      currentIndex: _currentindex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedFontSize: 0,
      iconSize: 30,
      onTap: (index){
        setState(() {
          _currentindex = index;
        });
        if(index==0){
          Navigator.of(context).pushNamed('/Home');
        }
        if(index==1){
          Navigator.of(context).pushNamed('/Search');
        }
        if(index==4){
          Navigator.of(context).pushNamed('/Profile');
        }
      },
      items: [
        BottomNavigationBarItem(
          icon:  Icon((_currentindex==0) ? Icons.home: Icons.home_outlined,),
          label: 'home',),
        BottomNavigationBarItem(
          icon:  Icon(Icons.search_outlined, size: (_currentindex==1) ? 33 : 30 ),
          label: 'search'),
        BottomNavigationBarItem(
          icon:  Icon((_currentindex==2) ? Icons.add_box :Icons.add_box_outlined ,),
          label: 'add'),
        BottomNavigationBarItem(
          icon:  Icon((_currentindex==3) ? Icons.favorite : Icons.favorite_border_outlined,),
          label: 'home'),
        BottomNavigationBarItem(
          icon: (_currentindex==4) ? DpBubble(userdata[0], 18) : DpBubble(userdata[0], 15),
          label: 'home')

      ],)
      
    );
  }

}