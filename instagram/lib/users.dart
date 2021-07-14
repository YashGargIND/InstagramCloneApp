import 'package:flutter/cupertino.dart';
import 'package:instagram/customwidgets.dart';

class User{
  String dplink ;
  String username;
  bool storySeen;

  User(this.storySeen, this.username, this.dplink){}
}

class PostData{
  late String dplink;
  late String username;
  late bool storyseen;
  String comments;
  String postlink;
  String caption;

  PostData(User user, this.postlink, this.caption, this.comments){
    this.dplink = user.dplink;
    this.username = user.username;
    this.storyseen = user.storySeen;
  }
}

class MessageData{
  late String dplink;
  late String username;
  late bool storyseen;
  String lastMessage;
  String time;

  MessageData(User user, this.lastMessage, this.time){
    this.dplink = user.dplink;
    this.username = user.username;
    this.storyseen = user.storySeen;
  }
}


  List<User> userdata = [
    User(true, '  Your Story  ','https://instagram.fbho2-1.fna.fbcdn.net/v/t51.2885-19/s150x150/160845417_2779067622346563_5904737522503301125_n.jpg?_nc_ht=instagram.fbho2-1.fna.fbcdn.net&_nc_ohc=hhXIov1Fd7sAX-G2BXv&edm=ABfd0MgBAAAA&ccb=7-4&oh=33875506292a3968dc8cdfe4781d4d89&oe=60F299AE&_nc_sid=7bff83'),
    User(false, 'Fury','https://tvline.com/wp-content/uploads/2020/09/samuel-l-jackson-nick-fury.jpg?w=620'),
    User(false, 'TheTonyStark','https://img.cinemablend.com/filter:scale/quill/d/9/5/a/c/9/d95ac9d6f0acd56e12b9452301c763cd1aeffe51.jpg?mw=600'),
    User(false, 'Nat_romanoff','https://i.pinimg.com/originals/70/db/8e/70db8e8ab2bbaf0d494235be2dd5d312.jpg'),
    User(true, 'DRStrange','http://www.cheatsheet.com/wp-content/uploads/2016/04/doctor-strange-pic-full.jpg'),
    User(true, 'steverogers1919', 'https://i.pinimg.com/originals/ab/b4/c2/abb4c2ef714aedbb945b2744f23abe85.jpg'),
    User(true, 'parker_peter13','https://data.whicdn.com/images/288897509/original.gif')
  ] ;

  List<PostData> post = [
    PostData(userdata[5], 'https://hips.hearstapps.com/digitalspyuk.cdnds.net/18/42/1539604028-captain-america-civil-war-avengers.jpg', ' Me with my best friend', '45,086'),
    PostData(userdata[6], 'http://images.8tracks.com/cover/i/012/211/726/akjnk-6473.jpg?rect=0,0,500,500&q=98&fm=jpg&fit=max&w=960&h=960', ' Pic Credit: Ned', '45')
  ] ;

  List<MessageData> messages = [
    MessageData(userdata[6], 'Are you Spiderman?', '10m'),
    MessageData(userdata[5], 'Thanks for motivating me sir, Thank you so much, Thank you very very much','1h   '),
    MessageData(userdata[1],'Sir, I think i saw an alien', '2h   '),
    MessageData(userdata[4], 'Can u Teach me Magic?', '10h')
    
  ];

  List<String> myPhotos = [
    'https://instagram.fbho2-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s750x750/124400167_704176767185456_1252250139658760168_n.jpg?_nc_ht=instagram.fbho2-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=E4hbVtZMFxYAX_uuNW1&edm=AP_V10EBAAAA&ccb=7-4&oh=9f5e7d6a04a76dc377a32b1ee3af16a3&oe=60F6212B&_nc_sid=4f375e',
    'https://instagram.fbho2-1.fna.fbcdn.net/v/t51.2885-15/e35/144720158_811126353090010_1450669024604167795_n.jpg?_nc_ht=instagram.fbho2-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=GDXYg5qpzNsAX8Juyyv&tn=t6HYQkiYhcIcxKNY&edm=AABBvjUBAAAA&ccb=7-4&oh=ddc0ed0ddf42ffbf015f9c783f70fbba&oe=60F4FF6C&_nc_sid=83d603',
    'https://instagram.fbho2-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s750x750/124176702_788849334997450_4802015284481234063_n.jpg?_nc_ht=instagram.fbho2-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=Ebo8PYfTxYwAX9mgqqT&edm=AABBvjUBAAAA&ccb=7-4&oh=3466e6dfabc3d093371fa7e894895806&oe=60F51F62&_nc_sid=83d603',
    'https://instagram.fbho2-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s750x750/84643683_185684095988122_2629344895874226756_n.jpg?_nc_ht=instagram.fbho2-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=8GL7U85YzhAAX-MNL8C&edm=AABBvjUBAAAA&ccb=7-4&oh=b9abb064a931547ab135af99ecd8e22e&oe=60F65DA7&_nc_sid=83d603',
    'https://instagram.fbho2-1.fna.fbcdn.net/v/t51.2885-15/e35/s1080x1080/174831782_565387461530483_170434048528602889_n.jpg?_nc_ht=instagram.fbho2-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=B4xE-h5T6lsAX_SQG6n&edm=AABBvjUBAAAA&ccb=7-4&oh=cf67f4f69ba614e8081d168796863bfb&oe=60F51390&_nc_sid=83d603',
    'https://instagram.fbho2-1.fna.fbcdn.net/v/t51.2885-15/e35/137399169_865196940906031_1330287293612890521_n.jpg?_nc_ht=instagram.fbho2-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=7oUjdoKUvcUAX9JRTjX&edm=AABBvjUBAAAA&ccb=7-4&oh=c3d303156cef2ac57e53613eba30f338&oe=60F664F2&_nc_sid=83d603',
    'https://scontent.fbho2-1.fna.fbcdn.net/v/t1.6435-9/124544509_1704778053036617_1122935780729734424_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=NOOefguNUWMAX_EvcDw&_nc_ht=scontent.fbho2-1.fna&oh=01eb523eab6ba30f1d630059043cd7df&oe=60F40237',
    'https://scontent.fbho2-1.fna.fbcdn.net/v/t1.6435-9/124172252_1704779999703089_6519912391033684838_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=e3f864&_nc_ohc=AKNspr_UxhMAX82Wou7&_nc_ht=scontent.fbho2-1.fna&oh=3973a1ad60a2ba21c038ba5415e30f9c&oe=60F3F016',
    'https://scontent.fbho2-1.fna.fbcdn.net/v/t1.6435-9/120808329_2793517617558806_2866494469233480151_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=730e14&_nc_ohc=cthp1pOYCOkAX8cP0lM&tn=K4HwNLHTTFiygp4x&_nc_ht=scontent.fbho2-1.fna&oh=849932dc7ef7da1712bacad4d637d642&oe=60F2D3ED'
  ];