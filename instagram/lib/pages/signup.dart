import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({ Key? key }) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.of(context).pushNamed('/Login');
          },
          child: Icon(Icons.arrow_back_ios,
          color: Colors.black,
                  size: 30),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child : Image(image: NetworkImage('https://1000logos.net/wp-content/uploads/2017/02/Instagram-Logo.png') ,),
                  width: 182,
                  ),
                SizedBox(height: 32,),
                Container(
                  width: 343,
                  height: 44,
                  color: Color(0xfffafafa),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(
                            width: 1,
                            color: Colors.grey.shade400,),
                            borderRadius: BorderRadius.circular(4)),
                      labelText: "Full Name",
                      labelStyle: TextStyle(
                        color: Colors.grey.shade500
                      )
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 343,
                  height: 44,
                  color: Color(0xfffafafa),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(
                            width: 1,
                            color: Colors.grey.shade400,),
                            borderRadius: BorderRadius.circular(4) ),
                      labelText: "Username",
                      labelStyle: TextStyle(
                        color: Colors.grey.shade500
                      )
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 343,
                  height: 44,
                  color: Color(0xfffafafa),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(
                            width: 1,
                            color: Colors.grey.shade400,),
                            borderRadius: BorderRadius.circular(4) ),
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.grey.shade500
                      )
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 343,
                  height: 44,
                  color: Color(0xfffafafa),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(
                            width: 1,
                            color: Colors.grey.shade400,),
                            borderRadius: BorderRadius.circular(4) ),
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(
                        color: Colors.grey.shade500
                      )
                    ),
                  ),
                ),
                SizedBox(height:10),
                Container(
                  width: 343,
                  height: 44,
                  child: TextButton(
                    child: Text("Sign Up"),
                    onPressed: (){
                    Navigator.of(context).pushNamed('/Home');
                    },
                    autofocus: false,
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0,
                        color: Colors.white,
                        ),    
                      primary: Colors.white,
                      backgroundColor: Colors.blue[600],
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      ),
                  ),
                ),
                SizedBox(height : 82),
                Row(
                children: <Widget>[
                    Expanded(
                        child: Divider(
                          thickness: 1,
                          indent: 16,
                          endIndent: 31.5,)
                    ),       
                    Text("OR"),        
                    Expanded(
                        child: Divider(
                          thickness: 1,
                          endIndent: 16,
                          indent: 31.5,)
                    ),
                ]
                ),
                SizedBox(height: 41.5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      
                      child: Text(
                        "Have an account?",
                        textAlign: TextAlign.center,
                         style: TextStyle(
                           color: Colors.grey.shade600,
                           fontSize: 16, ),     
                           ),
                    ),
                      Container(
                      child: Text(
                        " Log in",
                        textAlign: TextAlign.center,
                         style: TextStyle(
                           color: Colors.blue.shade600,
                           fontSize: 16, ),     
                           ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Divider(
                   thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    width: 375,
                    height: 30,
                    child: Text(
                          "Instagram or Facebook",
                          textAlign: TextAlign.center,
                           style: TextStyle(
                             color: Colors.grey.shade600,
                             fontSize: 16, ),     
                             ),
                    
                  ),
                )
              ],
            ),
          ),
        ),
      )
    
      
    );
  }
}