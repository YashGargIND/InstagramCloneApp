import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> storydp = [
    'https://instagram.fbho2-1.fna.fbcdn.net/v/t51.2885-19/s150x150/160845417_2779067622346563_5904737522503301125_n.jpg?_nc_ht=instagram.fbho2-1.fna.fbcdn.net&_nc_ohc=hhXIov1Fd7sAX-G2BXv&edm=ABfd0MgBAAAA&ccb=7-4&oh=33875506292a3968dc8cdfe4781d4d89&oe=60F299AE&_nc_sid=7bff83',
    'https://tvline.com/wp-content/uploads/2020/09/samuel-l-jackson-nick-fury.jpg?w=620',
    'https://img.cinemablend.com/filter:scale/quill/d/9/5/a/c/9/d95ac9d6f0acd56e12b9452301c763cd1aeffe51.jpg?mw=600',
    'https://i.pinimg.com/originals/70/db/8e/70db8e8ab2bbaf0d494235be2dd5d312.jpg',
    'http://www.cheatsheet.com/wp-content/uploads/2016/04/doctor-strange-pic-full.jpg',
    'https://i.pinimg.com/originals/06/52/5c/06525c40cb4718cfca68f38bde44c587.jpg'

  ] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        bottomOpacity: 1,
        shape: Border(bottom: BorderSide(color: Colors.grey, width: 1)),

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
    body: Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          height: 98.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: storydp.map((link) {
                return StoryBubble(link);
              }).toList(),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,

          )
        ],
      ),
    ),
      
    );
  }

  Container StoryBubble(String address) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('$address'),
                        backgroundColor: Colors.grey[200],
                        radius: 32,),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.red,
                          width: 3),)
                      ),
                SizedBox(height: 3,),
                Text('Your Story',
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
}