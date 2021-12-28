import 'package:flutter/material.dart';

class ucuncuSayfa extends StatelessWidget {
  const ucuncuSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/iphone.jpg"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text('My App'),
            centerTitle: true,
            leading: IconButton(
                icon: Icon(
                  Icons.list,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
        ),
      );
    
  }
}