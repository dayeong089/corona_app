import 'package:flutter/material.dart';
import 'package:pa3/pages/page1.dart';
import 'package:provider/provider.dart';
import 'package:pa3/pages/page2.dart';
import 'package:pa3/pages/page3.dart';
import 'package:pa3/pages/page4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Page3CounterProvider(0)),
        ChangeNotifierProvider(create: (context) => Page4CounterProvider(0)),
      ],
      child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: (routerSettings){
        switch(routerSettings.name){
          case '/':
            return MaterialPageRoute(builder: (_) => MyHomePage(title: "2019313065 ParkDayeong"));
          case '/page1':
            return MaterialPageRoute(builder: (_) => Page1(routerSettings.arguments));
          case '/page2':
            return MaterialPageRoute(builder: (_) => Page2(routerSettings.arguments));
          case '/page3':
            return MaterialPageRoute(builder: (_) => Page3(routerSettings.arguments));
          case '/page4':
            return MaterialPageRoute(builder: (_) => Page4(routerSettings.arguments));
          default:
            return MaterialPageRoute(builder: (_) => MyHomePage(title: "2019313065 ParkDayeong"));
        }
      },
    )
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  final String id = "skku";
  final String password = "1234";
  final textController = TextEditingController();
  final textController2 = TextEditingController();

  BoxDecoration boxDecoration() {
    return BoxDecoration(
      border: Border.all(
        color : Colors.grey,
        width : 2.0,
      ),
      borderRadius: BorderRadius.all(
          Radius.circular(10.0) //
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'CORONA LIVE',
              style : TextStyle(fontSize: 35, color: Colors.indigo),
            ),
            Text(
              'Login Please...',
            ),
            Text(
              '\n',
              style : TextStyle(fontSize: 30,),
            ),
            Container(
              width : 250,
              decoration : boxDecoration(),
              child : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text("ID: " , style : TextStyle(fontSize: 20)),
                          SizedBox(
                            width : 150,
                            child : TextField(
                              controller: textController,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text("PW: " , style : TextStyle(fontSize: 20)),
                          SizedBox(
                            width : 150,
                            child : TextField(
                              controller: textController2,
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        child: Text("Login"),
                        onPressed: (){
                          if((textController.text == id) && (textController2.text == password))
                          {
                            //Navigator.pushNamed(context, '/page1');
                            Navigator.pushNamed(
                                context,
                                '/page1',
                                arguments: {
                                "user-msg1": id,
                                });
                          }
                          //Navigator.pushNamed(context, '/page1');
                        }
                      ),
                ],
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
