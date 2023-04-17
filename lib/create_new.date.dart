import 'package:country_code_picker/country_code_picker.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shop_store/dashboard.dart';
import 'package:shop_store/utils/text_utils.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);


  @override
  State<CreateAccount> createState() => _CreateAccountState();
}
bool isChecked = false;
String countryValue = "";

String cityValue = "";
String address = "";
var fontFamily = "Roboto";
class _CreateAccountState extends State<CreateAccount> {
  TextUtils textUtils = TextUtils();
  TextEditingController dateController = TextEditingController();
  String? Country;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(


            onPressed: (){

            },

            icon: Icon(


              Icons.arrow_back_ios_rounded,
              color: Colors.black,


            ),

          ),
          backgroundColor: Colors.white,
          title: Text(
            'Create an Account',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),

        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(

                  decoration: InputDecoration(

                      hintText: 'Full name',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueAccent)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextField(

                  decoration: InputDecoration(

                      hintText: 'Email',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueAccent)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextField(

                  decoration: InputDecoration(

                      hintText: 'phone +90 (506) 000 000',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueAccent)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.lock),
                      hintText: 'Password',
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.lock),
                      hintText: 'Confirm Password',
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.blueAccent,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(

                  readOnly: true,
                  controller: dateController,

                  style: const TextStyle(
                    color: Colors.blue,

                  ),
                  keyboardType: TextInputType.datetime,


                  onTap: () async {

                    DateTime? date = await showDatePicker(
                        context: context,

                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2050),
                        currentDate: DateTime.now(),
                        initialEntryMode:


                        DatePickerEntryMode.calendar,
                        initialDatePickerMode: DatePickerMode.day,
                        builder: (context, child) {
                          return Theme(

                            data: Theme.of(context).copyWith(
                                colorScheme: ColorScheme.fromSwatch(

                                  primarySwatch: Colors.blue,
                                  accentColor: Colors.black,
                                  backgroundColor: Colors.black,
                                  cardColor: Colors.white,
                                )),
                            child: child!,
                          );
                        });

                    dateController.text = DateFormat(

                      'MMM/dd/yyyy',
                      "en_US",
                    ).format(DateTime.now());
                  },
                  decoration: InputDecoration(

                    hintText: 'Birthday',



                    suffixIcon: const Icon(Icons.calendar_month),





                    enabledBorder: OutlineInputBorder(


                      borderSide:
                      const BorderSide(color: Colors.black,width: 0.3),
                      borderRadius: BorderRadius.circular(5.0),

                    ),
                    border: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(

                      Radius.circular(5),
                    ),
                    border: Border.all(color: Colors.black, width: 0.4),
                  ),
                  child: Center(
                    child: Column(
                      children: [

                        CSCPicker(
                          showStates: false,
                          showCities: false,
                          onCountryChanged: (value) {
                            setState(() {
                              countryValue = value;
                            });
                          },

                          onCityChanged:(value) {
                            setState(() {
                              cityValue = value!;
                            });
                          },
                          dropdownDecoration: BoxDecoration(
                           border: Border.all(

                             color: Colors.white
                           )
                          ),

                        ),
                      ],
                    )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextField(

                  decoration: InputDecoration(

                      hintText: 'City',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueAccent)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
              ),

              Row(
                children: [
                  Checkbox(
                      value: isChecked,
                      activeColor: Colors.blue,
                      onChanged: (newBool) {
                        setState(() {
                          isChecked = newBool!;
                        });
                        print(newBool);
                      }),
                  SizedBox(
                    width: 1,
                  ),
                  // textUtils.normal13("I Agrer with Terms of service and privacy policy" , Colors.black, TextAlign.right),
                  Text.rich(
                    TextSpan(
                      text: 'I agree with ',
                      children: [
                        TextSpan(
                          text: 'Terms of Service',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // handle terms of service click
                              print('Terms of Service clicked');
                            },
                        ),
                        TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // handle privacy policy click
                              print('Privacy Policy clicked');
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(

                  width: 340,
                  height: 62,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        backgroundColor: Colors.blue,elevation: 0.0,side:BorderSide(color: Colors.white)),


                    child: Text('Sign up',  style:  TextStyle(

                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> const ShopStore()),
                      );


                    },

                  ),

                ),
              ),


      ],
              ),

    ),

          ),
        );




  }
}
