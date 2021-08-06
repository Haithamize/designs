import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_signin_button/button_builder.dart';

class DeliveryInfoScreen extends StatelessWidget {
  bool checkBoxValue = false;
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
        toolbarHeight: MediaQuery.of(context).size.height / 8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
              bottomStart: Radius.circular(25), bottomEnd: Radius.circular(25)),
        ),
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Delivery Information',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome To ZumraFood Republic, Now, Your ID is 0114336376A50',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 18),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Your Current Location Is',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 14),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
                decoration: InputDecoration(
                  labelText: 'Your Location',
                  border: OutlineInputBorder(),
                  suffixIcon: TextButton(
                    child: Text(
                      'Change',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.normal,
                          fontSize: 16),
                    ),
                    onPressed: () {},
                  ),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Please Enter Your Address',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 14),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                maxLines: 2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  suffixIcon: TextButton(
                    child: Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  labelStyle: TextStyle(
                    overflow: TextOverflow.ellipsis,
                  ),
                  labelText: 'Your Address',
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Text(
                        'Building No.',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        height: 40,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Text(
                        'Floor No.',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        height: 40,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Text(
                        'Flat No.',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        height: 40,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ), // da el row eli feh el building and floor and flat number
              SizedBox(height: 15,),
              Text(
                'Any Additional Comments',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 14),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                reverse: true,
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 8),
                    child: TextField(
                      textAlign: TextAlign.start,
                      maxLines: 100,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Add your comment...'
                      ),
                    ),
                  ),
                ),
              ), //da el box bta3 el comment
              SizedBox(height: 2,),
              CheckboxListTile(
                title: Text('Save This As Your Default Shipping Address'
                ,style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                ),
                  value: checkBoxValue,
                  onChanged: (value){print(value);},
                controlAffinity: ListTileControlAffinity.leading, //de 3shan a3ml el checkbox fl awl
              ),
              SizedBox(height: 50,),
              Align(
                alignment: Alignment.bottomCenter,
                child: SignInButtonBuilder(
                  backgroundColor: Colors.red,
                  onPressed: (){},
                  text: 'CONFIRM & CHECK YOUR INVOICE',
                  width: double.infinity,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
