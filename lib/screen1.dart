import 'package:flutter/material.dart';


class screen1 extends StatelessWidget {

  final String s1 = '123456';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
          child: Text("who am I",
          style: TextStyle(fontSize: 24,
          fontWeight: FontWeight.bold,)),
          ),

          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black,width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow:[ BoxShadow(color: Colors.amberAccent,
                  offset: Offset(6,6)),
              ],
            ),
            child: Text(s1,style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            color: Colors.redAccent,
            child: Image.asset(''),
            height: 200,
            width: 200,
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage(''),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.white,
                ),

              ),

              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage(''),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.white,
                ),

              )

            ],
          ),
        ],
      ),
    );
  }
}
