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
  String postlink;
  String caption;

  PostData(User user, this.postlink, this.caption){
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
    PostData(userdata[5], 'https://hips.hearstapps.com/digitalspyuk.cdnds.net/18/42/1539604028-captain-america-civil-war-avengers.jpg', ' Me with my best friend'),
    PostData(userdata[6], 'http://images.8tracks.com/cover/i/012/211/726/akjnk-6473.jpg?rect=0,0,500,500&q=98&fm=jpg&fit=max&w=960&h=960', ' Pic Credit: Ned')
  ] ;