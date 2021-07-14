import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram/users.dart';
import 'package:instagram/customwidgets.dart';


class Search extends StatefulWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
    int _currentindex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          
          children: [
            SizedBox(height: 5,),
      //--------------------------toprow-----------------------------------------------
          Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Container(
                    height: 36,
                    // color: Colors.grey.shade300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade100,
                       ),
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide(
                                width: 11,
                                color: Colors.grey.shade400,),
                                borderRadius: BorderRadius.circular(12)),
                          prefixIcon: Icon(Icons.search),
                          labelText: "Search",
                          labelStyle: TextStyle(
                            color: Colors.grey.shade600
                          )
                        ),
                      ),
                    ),
                  ),
              ),
           Container(
            margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
            height: 37,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: categories.map((category) {
                  return category;
                }).toList(),
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
               children: browsePosts.map((photo) => ImageTile(photo)).toList()
             ),
           )
        
        
        ],
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

      ],),
    
    );
  }
}
