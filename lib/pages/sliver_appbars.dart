import 'package:flutter/material.dart';
import 'package:map_app/constants/app_constants.dart';

class sliAppbar extends StatefulWidget {
  sliAppbar({Key? key}) : super(key: key);

  @override
  _sliAppbarState createState() => _sliAppbarState();
}

class _sliAppbarState extends State<sliAppbar> {
  @override
  Widget build(BuildContext context) {
    return   SliverAppBar(
          iconTheme: IconThemeData(color: Colors.grey.shade500),
          actions: [
            PopupMenuButton(
              
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.person,
                    color: Colors.grey.shade500,
                  ),
                ),
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text("Ahmet KARABUDAK"),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Text("Yavuz AKILLI"),
                        value: 2,
                      ),
                      PopupMenuItem(
                        child: Text("Yasin KAYA"),
                        value: 3,
                      ),
                    ]),
          ],
          expandedHeight: 220,
          pinned: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          backgroundColor: Colors.teal.shade900,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "MAP APP",
              style: Sabitler.DrawerStyle,
            ),
            centerTitle: true,
            background: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              child: Image.asset(
                "assets/img/0.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
  }
}