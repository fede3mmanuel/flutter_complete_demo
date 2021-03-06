import 'package:flutter/material.dart';
import 'package:new_app/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo :)'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              child: Image.asset('assets/bird.png'),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 50, 
                right: 50, 
                bottom: 10
              ),
              child: TextFormField(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: 'Input Username',
                  hintStyle: TextStyle(color: Colors.black),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                  ),
                ),
              controller: _usernameController,
            ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 50, 
                right: 50, 
                bottom: 10
              ),
              child: TextFormField(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: 'Input Password',
                  hintStyle: TextStyle(color: Colors.black),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                  ),
                ),
              controller: _passwordController,
              obscureText: true,
            ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                color: Colors.amber,
              ),
              child: MaterialButton(
                onPressed: () {
                  print('Username: ' + _usernameController.text);
                  print('Password: ' + _passwordController.text);
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text('Press Me'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
