import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoesstore/constant/colorss.dart';
import 'package:shoesstore/screen/dashbored.dart';
import 'package:shoesstore/screen/nabbar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Nabbar()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BG,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo.gif' , width: 400, height: 400,),
          SizedBox(height: 10,),
          Text("One Click Store", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, fontFamily: 'fontmainn', color: tex),),
          SizedBox(height: 5,),
          Text("BORN TO LAST, BUILT TO IMPRESS", style: TextStyle(fontFamily: 'fontmainn'),)
        ],
      ),
    );
  }
}
