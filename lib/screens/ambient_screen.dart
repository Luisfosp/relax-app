import 'package:flutter/material.dart';

class AmbientWatchFace extends StatelessWidget {
  const AmbientWatchFace({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'FlutterOS',
                style: TextStyle(
                    color: Color.fromRGBO(30, 136, 229, 1), fontSize: 30),
              ),
              SizedBox(height: 15),
              FlutterLogo(size: 60.0),
            ],
          ),
        ),
      );
}
