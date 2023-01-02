import 'package:exam1/PAGE3.dart';
import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Sing in here",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  hintText: "E-mail",
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  hintText: "Password",
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Icon(Icons.remember_me),
                  SizedBox(width: 5),
                  Text("Remember"),
                  SizedBox(width: 30),
                  Text("Forget Password?"),
                ],
              ),
            ),
            SizedBox(height: 100),
            InkWell(
              onTap: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>page3()));

                });
              },
              child: Container(
                height: 45,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "Sing Up",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.all(10),
              child: Expanded(
                child: Row(
                  children: [
                    Text("Don't have Account?"),
                    SizedBox(width: 250),
                    Text(
                      "Creat Account",
                      style: TextStyle(color: Colors.pinkAccent),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
