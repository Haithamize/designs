import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class MobileOtpScreen extends StatelessWidget {

  var textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        toolbarHeight: MediaQuery.of(context).size.height / 8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
              bottomStart: Radius.circular(25), bottomEnd: Radius.circular(25)),
        ),
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'ZumraFood Republic',
            style: TextStyle(
                color: CupertinoColors.black,
                fontSize: 18,
                fontWeight: FontWeight.normal),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.home,
              color: Colors.black,
              size: 50,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                'We Are Sending Your OTP Now, Please Check Your Mobile Messages',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 18),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Text(
                      'Mobile OTP No.',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 20,),
                  PinCodeTextField(
                      appContext: context,
                      length: 4,
                      onChanged: (value){},
                    animationType: AnimationType.fade,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.grey,
                    autoDismissKeyboard: true,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      fieldHeight: 50,
                      fieldWidth: 40,
                      borderRadius: BorderRadius.circular(5),
                      activeColor: Colors.white,
                      fieldOuterPadding: EdgeInsets.symmetric(horizontal: 20),
                      errorBorderColor: Colors.grey,
                      selectedColor: Colors.grey,
                      selectedFillColor: Colors.grey[800],
                    ),
                    animationDuration: Duration(milliseconds: 500),
                    obscureText: false,
                    controller: textEditingController,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'If You didn\'t receive Your OTP code in 30 Seconds, Click Here to Send a new one.',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 18),
                  ),
                ],
              ),
            ), //da el row eli feh el zrayer bta3t el social login
            Center(
              child: SignInButtonBuilder(
                backgroundColor: Colors.red,
                onPressed: (){},
                text: 'LOGIN',
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 100,vertical: 10),
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
