import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Drawer_Contacto extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacto', style: TextStyle(fontSize: 24),),
        backgroundColor: Colors.green[300],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 5,bottom: 5),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              initialValue: 'Usuario@gmail.com',
              style: TextStyle(fontSize: 20),
              validator: (value) {
                if (value == null) {
                  return 'Email';
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: 'Email',
                labelText: "Email",
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 5),
            child: TextFormField(
              keyboardType: TextInputType.number,
              initialValue: '12',
              maxLength: 2,
              style: TextStyle(fontSize: 20),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              ],
              validator: (value) {
                if (value == null) {
                  return 'Edad';
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: 'Edad',
                labelText: "Edad",
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 5),
            child: DateTimePicker(
              initialValue: DateTime.now().toString(),
              dateMask: 'd MMM, yyyy',
              firstDate: DateTime.now(),
              lastDate: DateTime(2100),
              style: TextStyle(fontSize: 20,color: Colors.blue[700]),
              dateLabelText: 'Fecha',
              onChanged: (val) => print(val),
              validator: (val) {
                print(val);
                return null;
              },
              onSaved: (val) => print(val),
            ),
          ),
        ],
      ),
    );
  }
}