import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black
      ),
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                shape: BoxShape.circle
              ),
              child: Center(
                child: Icon(Icons.person, size: 35, color: Colors.white,),
                ),
            ),

            SizedBox(height: 20,),

            Text("Silahkan Login untuk Melanjutkan", style: TextStyle(fontSize: 17,color: Colors.black87),),

            SizedBox(height: 20,),

            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87)
                ),
                prefixIcon: Icon(Icons.person, size: 20,),
                // hintText: "Masukkan Username",
                // hintStyle: TextStyle(color: Colors.black87),
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.black87, fontSize: 15)
              ),
            ),

            SizedBox(height: 20,),

            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87)
                ),
                prefixIcon: Icon(Icons.lock, size: 20,),
                // hintText: "Masukkan Password",
                // hintStyle: TextStyle(color: Colors.black87),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.black87, fontSize: 15)
              ),
            ),

            SizedBox(height: 20,),

            Card(
              color: Colors.blueGrey,
              elevation: 5,
              child: Container(
                height: 35,
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: (){},
                  child: Center(
                    child: Text("Login", style: TextStyle(fontSize:15, color: Colors.white),),
                  ),
                  ),
              )
            ),

            SizedBox(height: 10,),

            Card(
              color: Colors.black54,
              elevation: 5,
              child: Container(
                width: 200,
                height: 35,
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: (){},
                  child: Center(
                    child: Text("Sign Up", style: TextStyle(fontSize:15, color: Colors.white),),
                  ),
                  ),
              )
            ),
          ],
        ),
      ),
    );
  }
}