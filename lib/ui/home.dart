import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BIZ CARD",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,

      ),
      backgroundColor: Colors.blue.shade200,
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [_getCard(), _getAvatar()],
        ),

      ),
      
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(Icons.add),
          onPressed: null),
      
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
              title: Text(
                "Account",
                style: TextStyle(color: Colors.black),
              ),

          ),

          BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: Colors.black,
              ),
              title: Text(
                "Email",
                style: TextStyle(color: Colors.black),
              ),

          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.access_time,
                color: Colors.black,
              ),
              title: Text(
                "Time",
                style: TextStyle(color: Colors.black),
              )),
        ],
        
        backgroundColor: Colors.blue,
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 330,
      height: 200,
      margin: EdgeInsets.only(top: 50),
      padding: EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black, width: 3)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "ABHINAV UPADHYAY",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "Mechnical Engineering",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(
            "National Institute of Technology Goa",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(""),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email,),
              Text(
                "Email ID: abhinav.nitgoa.2019@gmail.com",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_outline),
              Text(
                "Instagram ID: @abhinav.upadhyay20",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          border: Border.all(color: Colors.black, width: 3),
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200/300"),
              fit: BoxFit.cover)),
      // child:  InkWell(
      //   onTap: (){
      //     final snackBar = SnackBar(content: Text("You clicked the Avatar !"));
      //     Scaffold.of(context).showSnackBar(snackBar);
      //   }
      // ),
    );

  }
}
