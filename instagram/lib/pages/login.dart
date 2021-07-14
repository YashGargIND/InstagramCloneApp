import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login
({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child : Image(image: AssetImage('assets/Instagram-Logo.png') ,),
                width: 182,
                ),
              SizedBox(height: 125,),
              Container(
                width: 307,
                height: 44,
                child: TextButton(
                  child: Text("Log in"),
                  onPressed: (){
                    Navigator.of(context).pushNamed('/LoginPage');
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
              SizedBox(height: 70,),
              Container(
                width: 307,
                height: 44,
                child: TextButton(
                  child: Text("Sign up"),
                  onPressed: (){
                    Navigator.of(context).pushNamed('/Signup');
                  },
                  autofocus: false,
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0,
                      color: Colors.white,
                      ),    
                    primary: Colors.blue[600],
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                      side: BorderSide(
                        color: Colors.blue.shade600,
                        width: 1,),
                      ),
                    
                    ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}