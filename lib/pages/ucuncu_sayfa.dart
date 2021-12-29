import 'package:flutter/material.dart';
import 'package:map_app/constants/app_constants.dart';
import 'package:map_app/pages/sliver_appbars.dart';

class ucuncuSayfa extends StatelessWidget {
  const ucuncuSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return Container(
      color: Color.fromRGBO(76, 76, 76, 1) ,
      child: CustomScrollView(
        slivers: <Widget>[
            SliverAppBar(
          iconTheme: IconThemeData(color: Colors.grey.shade500),
          actions: [
          ],
          expandedHeight: 50,
          pinned: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          backgroundColor: Colors.teal.shade900,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "SATIŞ",
              style: Sabitler.baslikStyle,
            ),
            centerTitle: true,
            background: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
          ),
        ),
          SliverPadding(
            padding: EdgeInsets.all(8),
            sliver:
            SliverToBoxAdapter(
              child: Container(
                color: Colors.grey,
                child:
                Column(),
                ),
                  ),
          ),
        ],
      ),
    );

  }
}