import 'package:flutter/material.dart';

class SimpleAlertDialogs extends StatelessWidget {

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          child: IconButton(
              onPressed: () async{
                await openCustomAlertDialogScreen(context);
              },
              icon: Text('Show dialog'),
            color: Colors.red,
          ),
        ),
      ),
    );
  }

  Future<void> openSimpleAlertDialogScreen(context)async {
    return await showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            content: Text('body of the dialog'),
            actions:
            [
              TextButton(onPressed: (){Navigator.pop(context);}, child: Text('ok')),
            ],
          );
        },
    );
  }


  Future<void> openCustomAlertDialogScreen(context)async {
    return await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(
            builder: (context, setState) => AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children:
                [
                  TextFormField(
                    validator: (value){
                      if(value!.isEmpty){
                        return 'This field cant be empty';
                      }
                      return null;
                    },
                  ),
                  CheckboxListTile(
                    value: isChecked,
                    onChanged: (checked){
                      setState((){
                        isChecked = checked!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: Text('save text'),
                  ),
                ],
              ),
              actions:
              [
                TextButton(onPressed: (){Navigator.pop(context);}, child: Text('ok')),
              ],
            ),
          );
        },
    );
  }
}
