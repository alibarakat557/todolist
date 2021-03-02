import 'package:flutter/material.dart';
import 'resourse.dart';

class Create extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CreateState();
  }
}
class CreateState extends State<Create>{

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      body: new Container(
        alignment:Alignment.center,
        child:new Column(
          children:[
            Container(
                child:new Text('Create new password?',
                    style:TextStyle(color:bpurple,))),

            Container(
                child:new Text('Enter your new password',
                    style:TextStyle(color:bpurple,))),

            Image.asset('imges/ic-5.png'),
            Container(
              margin: EdgeInsets.only(top: size.height*.025),
              width: size.width*.68,
              child: new TextField(
                  keyboardType:TextInputType.multiline,
                  decoration:InputDecoration(
                      enabledBorder:UnderlineInputBorder(
                        borderSide: BorderSide(color: bpurple),),
                      hintText: 'password') ,
                  controller:null),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height*.025),
              width: size.width*.68,
              child: new TextField(
                  keyboardType:TextInputType.multiline,
                  decoration:InputDecoration(
                      enabledBorder:UnderlineInputBorder(
                        borderSide: BorderSide(color: bpurple),
                      ),
                      hintText: 'Confirm Password') ,
                  controller:null),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height*.035),
              height: size.height*.08,
              width: size.width*.50,
              child:  RaisedButton(

                child: Text('Reset Passwo',
                  style: TextStyle(color:Colors.white), ),
                color: bpurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                onPressed:null,

              ),),

          ],

        ),
      ),
    );

  }
}