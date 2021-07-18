import 'package:flutter/material.dart';
import 'package:pa3/pages/page2.dart';
import 'package:provider/provider.dart';

class Page1 extends StatelessWidget{
  final Map<String, String> arguments;
  Page1(this.arguments);
  String _imagepath = "assets/images/corona.jpg";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("2019313065 ParkDayeong"),
      ),
      body: Center(
        child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children : <Widget>[
              Text(
                'CORONA LIVE',
                style : TextStyle(fontSize: 35, color: Colors.indigo),
              ),
              Text(
                'Login Success, Hello ' + arguments["user-msg1"] + '!!',
                style : TextStyle(fontSize: 15, color: Colors.blueAccent),
              ),
              Text(
                '\n',
                style : TextStyle(fontSize: 30,),
              ),
              SizedBox(
                width : 250,
                child :
                Image.asset(_imagepath),
              ),
              ElevatedButton(
                  child: Text("Start CORONA LIVE"),
                  onPressed: (){
                    Navigator.pushNamed(
                        context,
                        '/page2',
                        arguments: {
                          "user-msg1": arguments["user-msg1"],
                          "user-msg2":"Login Page",
                        });
                  }
              ),
            ]
        ),
      ),
    );
  }
}