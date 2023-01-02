import 'package:exam1/PAGE2.dart';
import 'package:flutter/material.dart';

class exm extends StatefulWidget {
  const exm({Key? key}) : super(key: key);

  @override
  State<exm> createState() => _exmState();
}

class _exmState extends State<exm> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pinkAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopping_bag_outlined, size: 150, color: Colors.white),
              SizedBox(
                height: 30,
              ),
              Text(
                "The Store Of your\ndreams.You will find\nhere what you need",
                style: TextStyle(color: Colors.white,letterSpacing: 1,wordSpacing: 2),
              ),
              SizedBox(
                height: 100,
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>page2()));
                  });
                },
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text("Start Shopping",style: TextStyle(color: Colors.pinkAccent),),alignment: Alignment.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Dont have an account?",
                style: TextStyle(color: Colors.white,fontSize: 10,wordSpacing: 2),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Sing in here",
                style: TextStyle(color: Colors.white,fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
