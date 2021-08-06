import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OrderConfirmed extends StatelessWidget {

  bool isChatWithUs = true;
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        toolbarHeight: MediaQuery
            .of(context)
            .size
            .height / 8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
              bottomStart: Radius.circular(25), bottomEnd: Radius.circular(25)),
        ),
        backgroundColor: Colors.white,
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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children:
        [
          SizedBox(height: 50,),
          Container(
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.red,
            ),
            child: IconButton(
                onPressed: () async {
                  await openCustomAlertDialogScreen(context);
                },
                icon: Text('Show Order Confirmation Dialog',
                  style: TextStyle(
                      color: Colors.white
                  ),
                  textAlign: TextAlign.center,
                )
            ),
          ),
          Container(
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.red,
            ),
            child: IconButton(
                onPressed: () async {
                  await openCustomAlertDialogScreenCancelation(context);
                },
                icon: Text('Show Order Cancelation Dialog',
                  style: TextStyle(
                      color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                )
            ),
          ),
          Container(
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.red,
            ),
            child: IconButton(
                onPressed: () async {
                  await openCustomAlertDialogScreenPayWithCredit(context);
                },
                icon: Text('Pay with credit card',
                  style: TextStyle(
                      color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                )
            ),
          ),
          Column(
            children: [
              TextButton(
                onPressed: () async {

                },
                child: Text(
                  'GO HOME',
                  style: TextStyle(
                      color: CupertinoColors.systemRed,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SignInButtonBuilder(
                  backgroundColor: Colors.red,
                  onPressed: () {},
                  text: 'CONFIRM & CHECK YOUR INVOICE',
                  width: double.infinity,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }



  Future<void> openCustomAlertDialogScreen(context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Your Order Has Benn Confirmed',
                          style: TextStyle(
                              color: CupertinoColors.activeGreen,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'We are Getting Close To You',
                          style: TextStyle(
                              color: CupertinoColors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Your Order No. is',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    '#214551756625',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'You can track your order from your profile',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'If you have any further Questions You can chat with us or call us at 19584',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(height: 15,),
                ],
              ),
              actions:
              [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: isChatWithUs ? BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.red),
                      ) : BoxDecoration(),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            isChatWithUs = true;
                          });
                        },
                        child: Text(
                          'CHAT WITH US',
                          style: TextStyle(
                              color: CupertinoColors.systemRed,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    Container(
                      decoration: !isChatWithUs ? BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.red),
                      ) : BoxDecoration(),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            isChatWithUs = false;
                          });
                        },
                        child: Text(
                          'CALL US',
                          style: TextStyle(
                              color: CupertinoColors.systemRed,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }


  Future<void> openCustomAlertDialogScreenCancelation(context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:
                    [
                      IconButton(
                          onPressed: (){Navigator.pop(context);},
                          icon: Icon(Icons.close,color: Colors.black,),
                      )
                    ],
                  ),
                  SizedBox(height: 50,),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'You Are About To Cancel Your Order',
                      style: TextStyle(
                          color: CupertinoColors.systemRed,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    'Do You Want To Save Your Order For Later',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'You Can Save Your Order At Your Profile, It will save your time from Re choosing Your Items Again',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(height: 100,),
                ],
              ),
              actions:
              [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration:BoxDecoration(
                          color: Colors.green
                        ),
                        child: TextButton(
                          onPressed: () {
                            // setState(() {
                            //   isChatWithUs = true;
                            // });
                          },
                          child: Text(
                            'SAVE YOUR ORDER',
                            style: TextStyle(
                                color: CupertinoColors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        onPressed: () {
                          // setState(() {
                          //   isChatWithUs = false;
                          // });
                        },
                        child: Text(
                          'DELETE',
                          style: TextStyle(
                              color: CupertinoColors.systemRed,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }


  Future<void> openCustomAlertDialogScreenPayWithCredit(context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:
                  [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:
                      [
                        IconButton(
                            onPressed: (){Navigator.pop(context);},
                            icon: Icon(Icons.close,color: Colors.black,),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Theme(
                        data: ThemeData(
                          unselectedWidgetColor:
                          Colors.red, //da hy8yr lon el circle mn barra
                        ),
                        child: ListTile(
                          minLeadingWidth: 5,
                          title: Text("Pay With Your Credit Card"),
                          leading: Radio(
                            value: 1,
                            groupValue: 1,
                            onChanged: (value) {
                            },
                            hoverColor: Colors.red,
                            activeColor: Colors
                                .black, //da hy8yr lon el radio button mn gwa y5leh eswd lma ytdas 3leh
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'Enter Your Card No.',
                      style: TextStyle(
                          color: CupertinoColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                    PinCodeTextField(
                      appContext: context,
                      length: 3,
                      onChanged: (value){},
                      animationType: AnimationType.fade,
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.grey,
                      autoDismissKeyboard: true,
                      pinTheme: PinTheme(
                        fieldWidth: 20,
                        activeColor: Colors.white,
                        errorBorderColor: Colors.grey,
                        selectedColor: Colors.grey,
                        selectedFillColor: Colors.grey[800],
                      ),
                      animationDuration: Duration(milliseconds: 500),
                      obscureText: false,
                      // controller: textEditingController,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                      [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                            [
                              Text(
                                'Card Expiry Date',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),
                              ),
                              SizedBox(height: 5,),
                              Container(
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'XX/XX',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                            [
                              Text(
                                'CVV',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12
                                ),
                              ),
                              SizedBox(height: 5,),
                              Container(
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                ),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hintText: 'XXX',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                      ],
                    ),
                    CheckboxListTile(
                      title: Text('Save This As Your Next Shopping Payments'
                        ,style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                      ),
                      value: checked,
                      onChanged: (value){
                        print(value);
                        setState((){
                          checked = value!;
                        });
                      },
                      contentPadding: EdgeInsetsDirectional.zero,
                      controlAffinity: ListTileControlAffinity.leading, //de 3shan a3ml el checkbox fl awl
                    ),
                  ],
                ),
              ),
              actions:
              [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red[600],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Text(
                      'CONFIRM',
                      style: TextStyle(
                          color: CupertinoColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
