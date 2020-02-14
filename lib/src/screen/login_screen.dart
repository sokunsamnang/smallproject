import 'package:flutter/material.dart';
import 'package:wallpaper/animation/FadeAnimation.dart';
import 'package:wallpaper/src/screen/home_screen.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  
  bool _obscureText = true;

  static String username = 'admin';
  static String password = 'admin';

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 300.0,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: -30,
                  height: 300.0,
                  width: width,
                  child: FadeAnimation(1, Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.fill
                      )
                    ),
                  )),
                ),
                Positioned(
                  height: 300.0,
                  width: width + 25.0,
                  child: FadeAnimation(1.3, Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/background-2.png'),
                        fit: BoxFit.fill
                      )
                    ),
                  )),
                ) 
              ],
            ),
          ),
          /*------------HEADER------------*/
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadeAnimation(1.5, Text('Login', style: TextStyle(color: Color.fromRGBO(49, 39, 79, 1), fontWeight: FontWeight.bold, fontSize: 30),)),
                SizedBox(height: 40.0,),
                FadeAnimation(1.7, Container(  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(196, 135, 198, 1),
                        blurRadius: 20.0,
                        offset: Offset(0, 10),
                      )
                    ]
                  ),
                  child: Column(
                    children: <Widget>[
                      /*------------Username field------------*/
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(
                            color: Colors.grey[300]
                          ))
                        ),
                        child: TextFormField(                         
                          controller: _emailController,
                          decoration: InputDecoration(
                            icon: Icon(Icons.account_circle),
                            border: InputBorder.none,
                            hintText: 'username',
                            hintStyle: TextStyle(color: Colors.grey)
                        ),
                      ),
                    ),
                    /*------------Password field------------*/
                    Container(
                      padding: EdgeInsets.all(10),                
                      child: TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          icon: Icon(Icons.vpn_key),
                          border: InputBorder.none,
                          hintText: 'password',
                          hintStyle: TextStyle(color: Colors.grey),   
                          suffixIcon: GestureDetector(
                            onTap: (){
                              setState(() {
                                _obscureText = !_obscureText;
                              });       
                            },
                            child: Icon(
                              _obscureText ? Icons.visibility : Icons.visibility_off,
                            ),
                          ),                  
                        ),
                        obscureText: _obscureText,
                      ),
                    ),
                    ],
                  ),
                )),

                /*------------Forget password------------*/
                SizedBox(height: 20.0,),
                FadeAnimation(1.7, Center(
                  child: FlatButton(
                    onPressed: null, 
                    child: Text('Forget Password?', style: TextStyle(color: Color.fromRGBO(196, 135, 198, 1)),))),
                ),
                /*------------Login Button------------*/
                SizedBox(height: 20.0,),
                FadeAnimation(1.9, Container(
                  height: 50.0,
                  margin: EdgeInsets.symmetric(horizontal: 80.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromRGBO(49, 39, 79, 1),
                  ),
                  child: Center(
                    child: RaisedButton(
                      child: Text('Login', style: TextStyle(color: Colors.white),),
                      color: Color.fromRGBO(49, 39, 79, 1),
                      shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.purple),
                      ),
                      onPressed: (){       
                        if(_emailController.text == username && _passwordController.text == password){          
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),);     
                        }    
                        else{
                          print('Incorrect Username or Password');
                        }          
                      }
                    ),
                  ),
                )),
                /*------------Create Account------------*/
                SizedBox(height: 10.0,),
                FadeAnimation(2, Center(child: FlatButton(
                  onPressed: null, 
                  child: Text('Create Account', style: TextStyle(color: Color.fromRGBO(49, 39, 79, 6)),))),
                  ),                
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
