import 'package:flutter/material.dart';
import 'package:instagram/users.dart';
import 'package:instagram/customwidgets.dart';


class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
    int _currentindex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: Icon(Icons.lock,
                color: Colors.black,
                size: 18),),
            Text(
              " __its.yash__",
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
        ),
      body: Column(
        
        children: [
//--------------------------toprow-----------------------------------------------
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
//------------------------dp----------------------------------------------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              child: DpBubble(userdata[0], 50),
            ),
//---------------------------Posts---------------------------------------------
            Container(
              width: 60,
              child: RichText(
                
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(fontSize: 19),
                  children: [
                  TextSpan(
                    text: '9',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                      )
                  ),
                  TextSpan(
                    text: '\n',
                    style: TextStyle(
                      color: Colors.black,
                      )
                  ),
                  TextSpan(
                    text: 'Posts',
                    style: TextStyle(
                      color: Colors.black,
                      )
                  )
                ]
                ),
              ),
            ),
//---------------------------Followers--------------------------------------------
            Container(
              width: 100,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(fontSize: 19),
                  children: [
                  TextSpan(
                    text: '439',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                      )
                  ),
                  TextSpan(
                    text: '\n',
                    style: TextStyle(
                      color: Colors.black,
                      )
                  ),
                  TextSpan(
                    text: 'Followers',
                    style: TextStyle(
                      color: Colors.black,
                      )
                  )
                ]
                ),
              ),
            ),
//------------------------------following------------------------------------------
            Container(
              width: 90,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(fontSize: 19),
                  children: [
                  TextSpan(
                    text: '405',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                      )
                  ),
                  TextSpan(
                    text: '\n',
                    style: TextStyle(
                      color: Colors.black,
                      )
                  ),
                  TextSpan(
                    text: 'Following',
                    style: TextStyle(
                      color: Colors.black,
                      )
                  )
                ]
                ),
              ),
            ),   
            SizedBox(width: 5,)       ],
        ),
//-----------------------------about section---------------------------------------
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: Container(
            width: 5000,
            child: Expanded(
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Yash Garg\n',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 18
                      ),),
                    TextSpan(
                      text: ' \n ',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 2
                      ),),
                    TextSpan(
                      text: "CSE IITG'24 \nEx-Shikharite\nEx-Goenkan\nAs Normal as an Tangent. \n ",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 18
                      )),
                  ]
                ) ,),
            ),
          ),
        ),
         Container(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Container(
                 width: 300,
                 height: 37,
                   child: TextButton(
                            child: Text("Edit Profile"),
                            onPressed: (){},
                            autofocus: false,
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
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
                  Container(
                    height: 37,
                    width: 40,
                    
                   child: TextButton(
                            child: Column(
                              children: [
                                Container(
                                  height: 0,
                                  child: Icon(Icons.expand_more,
                                  size: 24,),
                                ),
                                SizedBox(height: 5,)
                              ],
                              
                            ),
                            onPressed: (){},
                            autofocus: false,
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
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
                 
             ],
           ),
         ),
         SizedBox(height: 10,),
         Container(child: 
         Divider(height: 1,),),
         Expanded(
           child: GridView.count(
             primary: false,
             padding: const EdgeInsets.all(0),
             crossAxisSpacing: 1,
             mainAxisSpacing: 1,
             crossAxisCount: 3,
             children: myPhotos.map((photo) => ImageTile(photo)).toList()
           ),
         )
      
      
      ],
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

      ],),
    
    );
  }
}
