import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Page2 extends StatelessWidget{
  final Map<String, String> arguments;
  Page2(this.arguments);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Center(
        child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children : <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Icon(Icons.coronavirus_outlined),
                  TextButton(
                    child:Text("Cases/Deaths", style : TextStyle(color: Colors.black45),),
                      onPressed: (){
                        Navigator.pushNamed(
                            context,
                            '/page3',
                            arguments: {
                              "user-msg1": arguments["user-msg1"],
                            });
                      }
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Icon(Icons.local_hospital),
                  TextButton(
                      child:Text("Vaccine",style : TextStyle(color: Colors.black45),),
                      onPressed: (){
                        Navigator.pushNamed(
                            context,
                            '/page4',
                            arguments: {
                              "user-msg1": arguments["user-msg1"],
                            });
                      }
                  )
                ],
              ),
              Text('\n\n\n\n\n\n\n'),
              Text(
                'Welcome! ' + arguments["user-msg1"],
                style : TextStyle(fontSize: 15, color: Colors.grey),
              ),
              TextButton(
                  child:Text("Previous :"+arguments["user-msg2"]),
                  onPressed: (){
                    if(arguments["user-msg2"] == "Login Page")
                      {
                        Navigator.pushNamed(
                            context,
                            '/',
                            );
                      }
                    else if(arguments["user-msg2"] == "Cases/Deaths Page")
                      {
                        Navigator.pushNamed(
                            context,
                            '/page3',
                            arguments: {
                              "user-msg1": arguments["user-msg1"],
                            });
                      }
                    else if(arguments["user-msg2"] == "Vaccine Page")
                      {
                        Navigator.pushNamed(
                            context,
                            '/page4',
                            arguments: {
                              "user-msg1": arguments["user-msg1"],
                            });
                      }
                  }
              ),
            ]
        ),
      ),
    );
  }
}