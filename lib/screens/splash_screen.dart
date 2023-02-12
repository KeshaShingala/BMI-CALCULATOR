import 'package:animation_bmi/screens/home_page.dart';
import 'package:flutter/material.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {

  initTime ()async  {
    await Future.delayed(const Duration(seconds: 4) ,() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => home_page(),),);

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20,),
                  Image.asset("assets/images/3373123.png",height: 200,width: 200,),
                  SizedBox(height: 30,),
                  Text(
                    "BMI CALCULATOR",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 12,),
                  Text("Check your BMI",style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
