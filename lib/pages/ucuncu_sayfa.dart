import 'package:flutter/material.dart';
import 'package:map_app/constants/app_constants.dart';
import 'package:map_app/helper/data_helper.dart';
import 'package:map_app/pages/derslistesi.dart';
import 'package:map_app/pages/sliver_appbars.dart';

class ucuncuSayfa extends StatefulWidget {
  const ucuncuSayfa({Key? key}) : super(key: key);

  @override
  State<ucuncuSayfa> createState() => _ucuncuSayfaState();
}

class _ucuncuSayfaState extends State<ucuncuSayfa> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        appBar: AppBar(
          
          backgroundColor: Colors.teal.shade900,
          title: Center(child: Text("SONUÇ",style: Sabitler.DrawerStyle,)),
        ),
        body:Container(
          color:Colors.white10 ,
          child: DersListesi(),),
        floatingActionButton: FloatingActionButton(
          backgroundColor:  Color.fromRGBO(83, 99, 86, 1),
        onPressed: ()
        {
          setState(() {
            DataHelper.tumEklenenDersler.clear();
          });
        },
        child: Icon(Icons.delete),
      ) ,
    );
  }
}