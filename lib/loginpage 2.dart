import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Login_with_valid(),
    ),
  ));
}

class Login_with_valid extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Loginvalidatestate();
}

class Loginvalidatestate extends State<Login_with_valid> {
  GlobalKey<FormState> formkey = GlobalKey();
  @override
  bool showpass = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login_with_valid"),
      ),
      body: SingleChildScrollView(
          child: Center(
            child: Form(
        key: formkey,
        child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              //this use photo body ethra height dft cheyyan.
              Image(
                image: AssetImage(
                  "assets/Alecive-Flatwoken-Apps-Whatsapp-C.512.png",
                ),
                height: 100,
                width: 100,
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Username",

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            30)), // aa boxintrvalppam mark cheyyaan

                  ),
    validator: (uname) {
      if (uname!.isEmpty || !uname.contains("@") || !uname.contains(".")) {
        return "Please enter valid userName";
      }
      else {
        return null;
      }
    }

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                child: TextFormField(
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
                          borderRadius: BorderRadius.circular(30)),
                  ),
                  validator: (password){
                    if(password!.isEmpty||password.length<6){
                      return "please enter valid password";
                    }
                    else{
                    return null;
                    }
                  },

                ),

              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[800], fixedSize: Size(290, 30)),
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Create a new User",
                    style: TextStyle(color: Colors.green[800]),
                    selectionColor: Colors.black,
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot password",
                    style: TextStyle(color: Colors.green[800],),
                    selectionColor: Colors.black,
                  )),
              SizedBox(
                height: 120,
              ),

              Image(
                image: AssetImage("assets/Simpleicons-Team-Simple-Meta.512.png"),
                height: 50,
                width: 30,
              ),
            ],
        ),
      ),
          )),
    );
  }
}
