import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'splash.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: Loginpage(),
          )));
}

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
        backgroundColor: Colors.blue[800],
      ),
      body: Container(
        child: Center(
            child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            //this use photo body ethra height dft cheyyan
            Image(
              image: AssetImage(
                "assets/Facebook.png",
              ),
              height: 100,
              width: 100,
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "Mobile number or email",

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          30)), // aa boxintrvalppam mark cheyyaan
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
              child: TextField(
                obscureText: showpass,
                //password hide cheyyan adikkumbo star kannikkum
                obscuringCharacter: "*",
                //star use cheyyan
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    //userbox icon add cheyyan
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          //it is used hide and unhide method
                          if (showpass) {
                            showpass = false;
                          } else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(showpass == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    //Icon(Icons.visibility),  //pass icon add cheyyan
                    hintText: "Password",
                    //box just "password" ann adhine water mark kannikkam
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Login"),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.blue[800]),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Create a new User",
                  style: TextStyle(color: Colors.blue[800]),
                  selectionColor: Colors.black,
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot password",
                  style: TextStyle(color: Colors.blue[800]),
                  selectionColor: Colors.black,
                )),

          ],

        )),
      ),
    );
  }
}
