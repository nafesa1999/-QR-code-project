import 'dart:html';

import 'package:flutter/material.dart';
import '../container.dart';
import 'loginPage.dart';
import 'package:google_fonts/google_fonts.dart';
import '../customTextField.dart';

class signUp extends StatefulWidget {
  signUp({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

enum Type { MALE, FEMALE }

class _SignUpPageState extends State<signUp> {
  Type _typeValue = Type.MALE;
  bool checkBoxValue = false;
  double _height;
  double _width;
  double _pixelRatio;
  bool _large;
  bool _medium;

  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Back',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Widget _loginAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute<void>(builder: (context) => loginPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Already have an account ?',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Login',
              style: TextStyle(
                  color: Color(0xfff79c4f),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Reg',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xffe46b10),
          ),
          children: [
            TextSpan(
              text: 'ister',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: 'ation',
              style: TextStyle(color: Color(0xffe46b10), fontSize: 30),
            ),
          ]),
    );
  }

  Widget form() {
    return Container(
      margin: EdgeInsets.only(
          left: _width / 12.0, right: _width / 12.0, top: _height / 20.0),
      child: Form(
        child: Column(
          children: <Widget>[
            firstNameTextFormField(),
            SizedBox(height: _height / 60.0),
            lastNameTextFormField(),
            SizedBox(height: _height / 60.0),
            emailTextFormField(),
            SizedBox(height: _height / 60.0),
            phoneTextFormField(),
            SizedBox(height: _height / 60.0),
            passwordTextFormField(),
            SizedBox(height: _height / 60.0),
            addressTextFormField(),
            SizedBox(height: _height / 60.0),
            specializationTextFormField(),
            SizedBox(height: _height / 60.0),
            guildCardTextFormField(),
            SizedBox(height: _height / 60.0),
            ageTextFormField(),
            SizedBox(height: _height / 60.0),
            genderTextFormField(),
            SizedBox(height: _height / 60.0),
          ],
        ),
      ),
    );
  }

  Widget firstNameTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.text,
      icon: Icons.person,
      hint: "First Name",
    );
  }

  Widget lastNameTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.text,
      icon: Icons.person,
      hint: "Last Name",
    );
  }

  Widget emailTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.emailAddress,
      icon: Icons.email,
      hint: "Email ID",
    );
  }

  Widget phoneTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.number,
      icon: Icons.phone,
      hint: "Mobile Number",
    );
  }

  Widget passwordTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      icon: Icons.lock,
      hint: "Password",

    );
  }

  Widget addressTextFormField() {
    return Container(
      padding: EdgeInsets.all(30.0),
      decoration: new BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Row(
        children: <Widget>[
          new Text(
            'Governate : ',
            style: TextStyle(color: Colors.black54, fontSize: 15),
          ),
          new Expanded(
            flex: 1,
            child: new TextField(
              decoration: InputDecoration(
                // border: InputBorder.none,
                fillColor: Colors.white,
                filled: true,
              ),
              cursorColor: Colors.orange[200],
            ),
          ),
          new Text(
            'City : ',
            style: TextStyle(color: Colors.black54, fontSize: 15),
          ),
          new Expanded(
            flex: 1,
            child: new TextField(
              decoration: InputDecoration(
                //border: InputBorder.none,
                fillColor: Colors.white,
                filled: true,
              ),
              cursorColor: Colors.orange[200],
            ),
          ),
          new Text(
            'Street : ',
            style: TextStyle(color: Colors.black54, fontSize: 15),
          ),
          new Expanded(
              flex: 1,
              child: new TextField(
                decoration: InputDecoration(
                    //border: InputBorder.none,
                    fillColor: Colors.white,
                    filled: true),
                cursorColor: Colors.orange[200],
              )),

          // Expanded(
          //   flex: 1,
          //   child: new Container(
          //     // width: MediaQuery.of(context).size.width * 0.25,
          //     child: Text("Governate"),
          //     decoration: BoxDecoration(
          //       color: Colors.white60,
          //       borderRadius: BorderRadius.all(Radius.circular(10)),
          //       boxShadow: <BoxShadow>[
          //         BoxShadow(
          //             color: Colors.grey.shade200,
          //             offset: Offset(2, 4),
          //             blurRadius: 5,
          //             spreadRadius: 2)
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget ageTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.text,
      obscureText: true,
      icon: Icons.assignment_ind_outlined,
      hint: "Age",
    );
  }

  String radioItem = '';

  Widget genderTextFormField() {
    return Container(
      padding: EdgeInsets.all(50.0),
      decoration: new BoxDecoration(
        color: Colors.white70,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'Gender  ',
              style: TextStyle(color: Colors.black54, fontSize: 15),
            ),
          ),
          Expanded(
            flex: 2,
            child: RadioListTile(
              activeColor: Colors.amber[700],
              groupValue: radioItem,
              title: Text('Male',
                  style: TextStyle(color: Colors.black54, fontSize: 15)),
              value: 'Item 1',
              onChanged: (dynamic val) {

                setState(() {
                  radioItem = 'val';
                });
              },


            ),
          ),
          Expanded(
            flex: 2,
            child: RadioListTile(
              activeColor: Colors.amber[700],
              groupValue: radioItem,
              title: Text('Female',
                  style: TextStyle(color: Colors.black54, fontSize: 15)),
              value: 'Item 2',
                onChanged: (dynamic val) {

                  setState(() {
                    radioItem = 'val';
                  });
                },

            ),
          ),
        ],
      ),
    );
  }

  Widget specializationTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.text,
      obscureText: true,
      icon: Icons.article_outlined,
      hint: "Specialization",
    );
  }

  Widget guildCardTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.text,
      obscureText: true,
      icon: Icons.card_membership,
      hint: "Guild Card",
    );
  }

  Widget _registerButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute<void>(builder: (context) => loginPage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xfffbb448), Color(0xfff7892b)])),
        child: Text(
          'Register',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }

  Widget acceptTermsTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 100.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
              activeColor: Colors.orange[200],
              value: checkBoxValue,
              onChanged: (bool newValue) {
                setState(() {
                  checkBoxValue = newValue;
                });
              }),
          Text(
            "I accept all terms and conditions",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: _large ? 12 : (_medium ? 11 : 10)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    // _large =  ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
    // _medium =  ResponsiveWidget.isScreenMedium(_width, _pixelRatio);
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -MediaQuery.of(context).size.height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: container(),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: height * .2),
                    _title(),
                    SizedBox(
                      height: 10,
                    ),
                    firstNameTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    lastNameTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    ageTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    genderTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    emailTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    passwordTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    phoneTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    addressTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    specializationTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    guildCardTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    _registerButton(),
                    SizedBox(
                      height: 10,
                    ),

                    // ListTile(
                    //   title: const Text('Male'),
                    //   leading: Radio(
                    //     value: Type.MALE,
                    //     groupValue: _typeValue,
                    //     onChanged: (Type value) {
                    //       setState(() {
                    //         _typeValue = value;
                    //       });
                    //     },
                    //   ),
                    // ),
                    // ListTile(
                    //   title: const Text('Female'),
                    //   leading: Radio(
                    //     value: Type.FEMALE,
                    //     groupValue: _typeValue,
                    //     onChanged: (Type value) {
                    //       setState(() {
                    //         _typeValue = value;
                    //       });
                    //     },
                    //   ),
                    // ),
                    _loginAccountLabel(),
                  ],
                ),
              ),
            ),
            Positioned(top: 40, left: 0, child: _backButton()),
          ],
        ),
      ),
    );
  }
}
