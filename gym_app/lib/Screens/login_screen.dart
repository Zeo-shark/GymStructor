import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {

@override
_login createState() => _login();
}

class _login extends State<Loginpage> {

  TextEditingController phoneController = new TextEditingController();
  TextEditingController otpController = new TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 250.0,
                  child: Image.network("https://raw.githubusercontent.com/ASVKVINAYAK/HC-QS/main/d.png"),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
                  child: Text(
                    "Enter mobile no to login",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        letterSpacing: 0.56),
                  )),
              RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.black87, fontSize: 13.0),
                      children: [
                        TextSpan(
                            text: "Verify your account by  ",
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 20,
                            )),
                        TextSpan(
                            text: "One Time Password",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent,
                              fontSize: 15,
                            )),
                      ])),
              Container(
                width: MediaQuery.of(context).size.width * .8,
                child: TextFormField(
                  controller: phoneController,
                  enableInteractiveSelection: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    // fillColor: Colors.grey[200],

                    hoverColor: Colors.white,
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),

                    prefixIcon: Padding(
                      padding: EdgeInsets.all(6),
                      child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.black87, fontSize: 13.0),
                            children: [
                              TextSpan(
                                  text: "+91 ",
                                  style: TextStyle(
                                    color: Colors.black87,
                                  )),
                              TextSpan(
                                  text: " | ",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 17.0,
                                  )),
                            ]),
                      ),
                    ),
                  ),
                  validator: (value) =>
                  value.length != 10 ? 'Incorrect number entered' : null,
                ),
              ),
              isLoading
                  ? CircularProgressIndicator(
                valueColor:
                new AlwaysStoppedAnimation<Color>(Color(0xffBF5FFE)),
              )
                  : Container(
                  decoration: BoxDecoration(
                      color: Colors.tealAccent,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  height: 43.0,
                  width: MediaQuery.of(context).size.width * .8,
                  child: TextButton(
                      onPressed: (){},
                      child: Text("Login with OTP",
                          style: new TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            letterSpacing: 2.0,
                          )))),
              SizedBox(
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}