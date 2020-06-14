import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greenary App',
      color:Colors.black,
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,

    );
  }
}
var greenColor =  Color(0xFFE8F5E9);
var pImage ='https://gingercake.org/gingercake/wp-content/uploads/2017/03/IMG_6655.jpg';
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.pink,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child:Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(404.0)),
                color: Colors.white,
              ),

              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 32.0),
                    Icon(Icons.arrow_back),
                    SizedBox(height: 32.0),
                    Container(
                        width: 300.0,
                        child:Text(
                          'Welcome',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize:32.0),
                        )
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      'Come & Shop Now',
                      style: TextStyle(color: Colors.black),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[

                        Spacer(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FloatingActionButton(
                              onPressed: (){
                                Navigator.push(context,MaterialPageRoute(
                                    builder: (context)=> DetailScreen()
                                ),
                                );
                              },
                              backgroundColor:Colors.pink,
                              child: Icon(Icons.shopping_cart),
                            ),
                            Container(
                              width:200.0,
                              height:250.0,
                              child:Image.network(pImage,fit: BoxFit.cover,),

                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),


                        ),
                        SizedBox(width: 4.0),
                        Text('T&M',
                          style:TextStyle(
                              color: Colors.pinkAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10.0),
                  Text('New Arrivals Available Now!',style: TextStyle(color: Colors.white),),
                  Spacer(),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        width: MediaQuery.of(context).size.width/2-40,
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(30.0),

                          ),
                        ),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment:CrossAxisAlignment.start,

                          children:<Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Get Offers',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0,
                                  ),
                                ),
                                SizedBox(width: 8.0),


                                Text(
                                  '\%',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100.0,
                        width: MediaQuery.of(context).size.width/2-50,
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(30.0),

                          ),
                        ),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment:CrossAxisAlignment.start,

                          children:<Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Hurry Up',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0,
                                  ),
                                ),
                                SizedBox(width: 8.0),


                                Text(
                                  'Enjoy',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),


    );
  }
}

class DetailScreen extends StatelessWidget {
  _buildEmailTF(){
    return Column(crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[
      Text('Email', style: TextStyle(
        color: Colors.white,fontSize: 20.0, fontWeight: FontWeight.bold,
      ),),
      SizedBox(height:10.0),
      Container(
        alignment: Alignment.centerLeft,
        height: 60.0,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding:EdgeInsets.only(top:14.0),
            prefixIcon: Icon(Icons.email, color: Colors.white,),
            hintText: 'Enter Your Email',
          ),
        ),
      ),

    ],
    );
  }
  Widget _buildPasswordTF(){
    return  Column(crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[
      Text('Password', style: TextStyle(
        color: Colors.white,fontSize: 20.0, fontWeight: FontWeight.bold,
      ),),
      SizedBox(height:10.0),
      Container(
        alignment: Alignment.centerLeft,
        height: 60.0,
        child: TextField(
          obscureText: true,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding:EdgeInsets.only(top:14.0),
            prefixIcon: Icon(Icons.lock, color: Colors.white,),
            hintText: 'Enter the Password',
          ),
        ),
      ),

    ],
    );



  }
  Widget _buildForgotTF(){
    return  Container(
      alignment:Alignment.centerRight,
      child:FlatButton(
        onPressed: ()=>print('forgot Password Button Pressed'),
        child: Text('forgot Password?',style: TextStyle(
          color: Colors.white70,
        ),),),
    );
  }
  Widget _buildSignBtn(){
    return  Container(
      padding: EdgeInsets.symmetric(vertical:25.0),
      width: double.infinity,
      child:RaisedButton(
        elevation: 5.0,
        onPressed: () =>print('Sign Up Button Pressed'),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'SIGN UP',
          style: TextStyle(
            color: Colors.black,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
  Widget _buildLoginBtn(){
    return Container(
      padding: EdgeInsets.symmetric(vertical:25.0),
      width: double.infinity,
      child:RaisedButton(
        elevation: 5.0,
        onPressed: () =>print('Login Button Pressed'),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.black,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('T&M',style: TextStyle(
          fontSize: 17.0,
        ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
       Text('Sign In',style: TextStyle(
         color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold,
       ),),
          SizedBox(
            height:20.0,
          ),
          _buildEmailTF(),
          SizedBox(height: 10.0),
          _buildPasswordTF(),
         _buildForgotTF(),
        _buildSignBtn(),
          _buildLoginBtn(),

      ],
    ),
    );
  }
}
