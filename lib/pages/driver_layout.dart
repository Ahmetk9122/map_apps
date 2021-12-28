import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  DrawerMenu({Key? key}) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName:Text("Ahmet KARABUDAK"),
              accountEmail:Text("ahmet_karabudak@gmail.com"),
              currentAccountPicture:Image.asset("assets/img/1.png"),
              ),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Anasayfa"),
                      trailing: Icon(Icons.chevron_right),
                    )
                  ],
                ),
              )
          ],
        ),
      );
  }
}