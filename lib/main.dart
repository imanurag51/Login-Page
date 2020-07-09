import 'package:flutter/material.dart';

void main() => runApp(app());

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            colors: [
              Colors.orange[900],
              Colors.orange[800],
              Colors.orange[400]
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80,),
              Padding(
                padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Login',style: TextStyle(color: Colors.white,fontSize: 40),overflow: TextOverflow.ellipsis,),
                  SizedBox(height: 10,),
                  Text('Welcome Back',style: TextStyle(color: Colors.white,fontSize: 20),)
                ],
              ),
              ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        boxShadow: [BoxShadow(
                          color: Colors.grey,
                          blurRadius: 20,
                        )]
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.yellow))
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Email or Phone Number',
                                hintStyle: TextStyle(color: Colors.grey[300]),
                                border: InputBorder.none
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.yellow))
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: Colors.grey[300]),
                                  border: InputBorder.none
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      child: FlatButton(
                      child: Text('Forgot Password?'),
                        onPressed: () {  },
                      ),
                    ),
                    FlatButton(
                      splashColor: Colors.white,
                      padding: EdgeInsets.only(left: 60,right: 60,top: 20, bottom: 20),
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      color: Colors.green,
                      child: Text('Login'),
                      onPressed: () {  },
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      child: Text('Continue with Social Media',),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        FlatButton(
                          splashColor: Colors.white,
                          padding: EdgeInsets.only(left: 20,right: 20,top: 10, bottom: 10),
                          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                          color: Colors.yellow[900],
                          child: Text('Facebook'),
                          onPressed: () {  },
                        ),
                        FlatButton(
                          splashColor: Colors.white,
                          padding: EdgeInsets.only(left: 20,right: 20,top: 10, bottom: 10),
                          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                          color: Colors.yellow[700],
                          child: Text('Gmail'),
                          onPressed: () {  },
                        ),
                        FlatButton(
                          splashColor: Colors.white,
                          padding: EdgeInsets.only(left: 20,right: 20,top: 10, bottom: 10),
                          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                          color: Colors.yellow[500],
                          child: Text('Others'),
                          onPressed: () {  },
                        ),
                      ],
                    )
                  ],
                ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
