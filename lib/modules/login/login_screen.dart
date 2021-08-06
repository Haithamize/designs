import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class LoginScreen extends StatelessWidget {
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Our Robot Guy is preparing your package now. Can you login till he finish',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Text(
                    'Login With Your Mobile No.',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 18),
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Your Mobile No.',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Text(
                        'OR',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 18),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SignInButtonBuilder(
                    //   icon: Icons.g_translate,
                    //     iconColor: Colors.black,
                    //     mini: true,
                    //     backgroundColor: Colors.white,
                    //     onPressed: (){},
                    //     text: '',
                    // ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.g_translate,
                          color: Colors.black,
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.white,
                            //lon el background bta3 el button
                            padding: EdgeInsets.all(10),
                            onPrimary:
                                Colors.red //el lon eli hyzhar lma ados 3la el zorar
                            ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.facebook,
                        color: Colors.black,
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          primary: Colors.white,
                          padding: EdgeInsets.all(10),
                          onPrimary: Colors.blue),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: SignInButton(
                          Buttons.Apple,
                          mini: true,
                          onPressed: () {},
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.white,
                            onPrimary: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ],
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
