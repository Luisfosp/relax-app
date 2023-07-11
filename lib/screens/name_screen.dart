import 'package:contador_wearable/screens/relax_menu.dart';
import 'package:flutter/material.dart';
import 'package:wear/wear.dart';

import 'ambient_screen.dart';

class NameScreen extends StatelessWidget {
 final screenHeight;
 final screenWidth;
 const NameScreen(this.screenHeight, this.screenWidth, {super.key});
 @override
 Widget build(BuildContext context) {
 return AmbientMode(
 builder: (context, mode, child) =>
 mode == WearMode.active
 ? NameScreenUI(screenHeight, screenWidth)
 : const AmbientWatchFace(),
 );
 }
}
class NameScreenUI extends StatelessWidget {
 final screenHeight;
 final screenWidth;
 const NameScreenUI(this.screenHeight, this.screenWidth, {super.key});
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 body: Center(
 child: SizedBox(
 height: screenHeight,
 width: screenWidth,
 child: Column(
 children: [
 InkWell(
 child: Row(
 mainAxisAlignment: MainAxisAlignment.center,
 children: <Widget>[
 Image.asset('assets/outline_arrow.png', scale: 1.8,),
 const SizedBox(width: 5,),
 const Text('Back',
 style: TextStyle(fontSize: 15,
 fontWeight: FontWeight.w300,)
 )
 ],
 ),
 onTap: () => Navigator.of(context).pop(),
 ),
 const SizedBox(height: 10,),
 const Text('Welcome to',
 style: TextStyle(fontSize: 14,),
 ),
 const SizedBox(height: 5,),
 Text('Flutter OS',
 style: TextStyle(fontSize: 20, color: Colors.blue[700],),
 ),
 const SizedBox(height: 5,),
 ElevatedButton(
 onPressed: () {
 Navigator.of(context)
 .push(MaterialPageRoute(
 builder: (context){
 return RelaxView(screenHeight,
 screenWidth);
 }
 )
 );
 },
 child: const Text(
 'NEXT',
 style: TextStyle(
 color: Colors.blue,
 fontSize: 15,
 ),
 ),
 )
 ],
 ),
 ),
 ),
 );
 }
}