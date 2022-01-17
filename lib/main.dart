import 'package:flutter/material.dart';
import 'package:qrsample/pages/homepage.dart';

void main(){
  runApp(const Qrcode());
}

class Qrcode extends StatelessWidget {
  const Qrcode({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:"Qr Code Scanner",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}