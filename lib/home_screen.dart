import 'package:flutter/material.dart';
import 'package:shop_store/create_new.date.dart';
import 'package:shop_store/utils/text_utils.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
var fontFamily = "Roboto";

class _HomeScreenState extends State<HomeScreen> {

  TextUtils textUtils = TextUtils();

  @override

  Widget build(BuildContext context) {
    return SafeArea(


      child: Scaffold(
        backgroundColor: Colors.white,

        body: SingleChildScrollView(
          child: Column(


            children: [
              SizedBox(height: 25,),


              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(


                  child: Container(

                    height: 115,



                    child: textUtils.bold32('Welcome \n Skylinx \n Technologies', Colors.blue,TextAlign.center,),


                  ),
                ),
              ),
              textUtils.normal16('When television was young, there was \n a hugely popular show based on the still\n popular fictonal', Colors.black87, TextAlign.center),
            SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(

                  decoration: InputDecoration(

                      hintText: '                                   Email',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueAccent)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(

                  decoration: InputDecoration(

                      hintText: '                               Password',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueAccent)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(

                  width: 340,
                  height: 62,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        backgroundColor: Colors.blue,elevation: 0.0,side:BorderSide(color: Colors.white)),


                    child: Text('Signin',  style:  TextStyle(

                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> const HomeScreen()),
                      );


                    },

                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text('Forgot Password?', ),
                    InkWell(
                      // onTap: (){
                      //   Navigator.of(context).push(
                      //     MaterialPageRoute(
                      //         builder: (context) => ResetPas()
                      //     ),);
                      // },
                      child:
                      // Text('Reset Password   ',
                      // style: TextStyle(
                      //   color: Colors.blueAccent,
                      //   fontSize: 18,
                      // ),)
                      textUtils.normal17("Forget Password ", Colors.blue,TextAlign.start),
                    ),
                    // ButtonBar(
                    //   text: 'Reset Password',
                    //   clear: true,
                    //   onTap: () => Navigator.of(context).push(
                    //     MaterialPageRoute(
                    //         builder: (context) => _mylogin()
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child:
                textUtils.normal16('Sign-in with Social Media', Colors.black,TextAlign.center,)

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialLoginButton(image:"facebook.png", ),
                    socialLoginButton(image:"twitter.png",onTap: null ),


                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(

                  width: 340,
                  height: 62,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        backgroundColor: Colors.white,elevation: 0.0,side:BorderSide(color: Colors.black,width: 0.3)),


                    child:
                    // Text('Signin with Email address',  style:  TextStyle(
                    //   color: Colors.black,
                    //
                    //   fontSize: 20,
                    //   fontWeight: FontWeight.bold,
                    // )),
                    textUtils.normal16('Sign up with Email Address', Colors.black,TextAlign.center,),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> const CreateAccount()),
                      );


                    },

                  ),

                ),
              ),





            ]

          ),
        ),

      ),



    );


  }
  socialLoginButton({image,onTap}){
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        height: 50,
        width: 160,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/$image"),
        ),
      ),
    );
  }
}
