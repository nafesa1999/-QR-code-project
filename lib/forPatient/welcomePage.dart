import 'package:flutter/material.dart';

import 'AddData.dart';
import 'AddData1.dart';
import 'AddData2.dart';
import 'AddData3.dart';
import 'ViewData.dart';
import 'ViewData1.dart';
import 'ViewData2.dart';
import 'ViewData3.dart';
import 'package:project/main.dart';

class welcomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _welcomePageState();
  }
}

class _welcomePageState extends State<welcomePage> {
  bool _checkbox1 = false;
  bool _checkboxListTile1 = false;

  bool _checkbox2 = false;
  bool _checkboxListTile2 = false;

  bool _checkbox3 = false;
  bool _checkboxListTile3 = false;

  bool _checkbox4 = false;
  bool _checkboxListTile4 = false;
  double _height;
  double _width;
  double _pixelRatio;

  //we omitted the brackets '{}' and are using fat arrow '=>' instead, this is dart syntax

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Welcome',
          style: TextStyle(color: Color(0xffe46b10), fontSize: 30),
          children: [
            TextSpan(
              text: 'For Pa',
              style: TextStyle(color: Colors.black, fontSize: 50),
            ),
            TextSpan(
              text: 'tient',
              style: TextStyle(color: Color(0xffe46b10), fontSize: 50),
            ),
          ]),
    );
  }

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
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Back',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    final height = MediaQuery.of(context).size.height;
    const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("images/15.jpg"),
        fit: BoxFit.fill,
      ),
    );
    return Scaffold(

        body: SingleChildScrollView(
          physics:new NeverScrollableScrollPhysics(),

          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
          padding: EdgeInsets.symmetric(vertical: 80),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black87,
                width: 5,
              )),

          //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
          child: Stack(children: <Widget>[
            Positioned(
              top: -MediaQuery.of(context).size.height ,
              right: -MediaQuery.of(context).size.width ,
              left: -MediaQuery.of(context).size.width ,
              child: Container(),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 50),

                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 0),
                          _title(),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                  padding: const EdgeInsets.all(30.0),
                                  decoration: new BoxDecoration(
                                      color: Colors.orange[100],
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  width: 250,
                                  height: 300,
                                  child: new Center(
                                    child: new Column(children: <Widget>[
                                      Checkbox(
                                        value: _checkbox1,
                                        activeColor: Colors.red,
                                        onChanged: (value) {
                                          setState(() {
                                            _checkbox1 = !_checkbox1;
                                          });
                                        },
                                      ),
                                      Text('Medical dignosis',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 50),
                                      RaisedButton(
                                        onPressed: () {
                                          debugPrint('I am a material button');
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute<void>(
                                                  builder: (wcontext) =>
                                                      ViewData()));
                                        },
                                        textColor: Colors.grey[700],
                                        child: Text(
                                          'View',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      RaisedButton(
                                        onPressed: () {
                                          debugPrint('I am a material button');
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute<void>(
                                                  builder: (context) =>
                                                      AddData()));
                                        },
                                        textColor: Colors.grey[700],
                                        child: Text(
                                          'New Dignosis',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        color: Colors.white,
                                      ),
                                    ]),
                                  )),
                              Container(
                                  padding: const EdgeInsets.all(30.0),
                                  decoration: new BoxDecoration(
                                      color: Colors.orange[100],
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  width: 250.0,
                                  height: 300,
                                  child: new Center(
                                    child: new Column(children: <Widget>[
                                      Checkbox(
                                        value: _checkbox3,
                                        activeColor: Colors.red,
                                        onChanged: (value) {
                                          setState(() {
                                            _checkbox3 = !_checkbox3;
                                          });
                                        },
                                      ),
                                      Text('Medical Analysis',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 50),
                                      RaisedButton(
                                        onPressed: () {
                                          debugPrint('I am a material button');
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute<void>(
                                                  builder: (context) =>
                                                      ViewData1()));
                                        },
                                        textColor: Colors.grey[700],
                                        child: Text(
                                          'View',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      RaisedButton(
                                        onPressed: () {
                                          debugPrint('I am a material button');
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute<void>(
                                                  builder: (context) =>
                                                      AddData1()));
                                        },
                                        textColor: Colors.grey[700],
                                        child: Text(
                                          'upload Analysis',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        color: Colors.white,
                                      ),
                                    ]),
                                  )),
                              Container(
                                  padding: EdgeInsets.all(30.0),
                                  decoration: new BoxDecoration(
                                      color: Colors.orange[100],
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  width: 250.0,
                                  height: 300,
                                  child: new Center(
                                    child: new Column(children: <Widget>[
                                      Checkbox(
                                        value: _checkbox2,
                                        activeColor: Colors.red,
                                        onChanged: (value) {
                                          setState(() {
                                            _checkbox2 = !_checkbox2;
                                          });
                                        },
                                      ),
                                      Text('Medical X-Rays',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 50),
                                      RaisedButton(
                                        onPressed: () {
                                          debugPrint('I am a material button');
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute<void>(
                                                  builder: (context) =>
                                                      ViewData2()));
                                        },
                                        textColor: Colors.grey[700],
                                        child: Text(
                                          'View',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      RaisedButton(
                                        onPressed: () {
                                          debugPrint('I am a material button');
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute<void>(
                                                  builder: (context) =>
                                                      AddData2()));
                                        },
                                        textColor: Colors.grey[700],
                                        child: Text(
                                          'upload x-rays',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        color: Colors.white,
                                      ),
                                    ]),
                                  )),
                              Container(
                                  padding: EdgeInsets.all(30.0),
                                  decoration: new BoxDecoration(
                                      color: Colors.orange[100],
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  width: 250.0,
                                  height: 300,

                                  child: new Center(
                                      child: new Column(children: <Widget>[
                                    Checkbox(
                                      value: _checkbox3,
                                      activeColor: Colors.red,
                                      onChanged: (value) {
                                        setState(() {
                                          _checkbox3 = !_checkbox3;
                                        });
                                      },
                                    ),
                                    Text('Surgeries',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(height: 50),
                                    RaisedButton(
                                      onPressed: () {
                                        debugPrint('I am a material button');
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute<void>(
                                                builder: (context) =>
                                                    ViewData3()));
                                      },
                                      textColor: Colors.grey[700],
                                      child: Text(
                                        'View',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    RaisedButton(
                                      onPressed: () {
                                        debugPrint('I am a material button');
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute<void>(
                                                builder: (context) =>
                                                    AddData3()));
                                      },
                                      textColor: Colors.grey[700],
                                      child: Text(
                                        'New Surgeries',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      color: Colors.white,
                                    ),
                                  ]))),
                              Positioned(
                                  top: 40, left: 0, child: _backButton()),

                            ],
                          )
                        ])),
            )])),
    )
    );
  }

}
