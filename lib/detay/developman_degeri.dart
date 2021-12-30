import 'package:flutter/material.dart';
import 'package:map_app/constants/app_constants.dart';
import 'package:map_app/helper/data_helper.dart';
import 'package:map_app/model/ders.dart';

class Developman extends StatefulWidget {
  Developman({Key? key}) : super(key: key);

  @override
  _DevelopmanState createState() => _DevelopmanState();
}
 
      
class _DevelopmanState extends State<Developman> {
   /*R*/TextEditingController x = TextEditingController();
  /*Some noktası*/TextEditingController y = TextEditingController();

  double sonuc =0;
  void hesapla ()
  {
    setState(() {
     double pi =3.14;
    
    sonuc =((pi*(double.parse(x.text))*(double.parse(y.text)))/200);
    var ekeleneekDers =Ders(ad: "Developman Boyu", deger:sonuc.toStringAsFixed(2));
    DataHelper.dersEkle(ekeleneekDers);
    print(DataHelper.tumEklenenDersler);
    });
                   
  }
  
  bool isVisible =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: BackButton(color: Colors.black),
           expandedHeight: 220,
            pinned: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            backgroundColor: Colors.teal.shade900,
            flexibleSpace: FlexibleSpaceBar(
              //title: Text("MAP APP",style:Sabitler.baslikSiyah,),
              centerTitle: true,
              background: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                child: Image.asset(
                  "assets/img/hesap.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              left: 50,
              right: 50,
              top: 8,
            ),
            sliver: SliverToBoxAdapter(
              child: Container(
                width: 75,
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 0.5,
                        color: Colors.grey,
                        style: BorderStyle.solid),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 2,
                        offset: Offset(6, 7), // Shadow position
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30), // radius of 10
                    color: Colors.white70
                    // green as background color
                    ),
                child: Center(
                    child: Text(
                  "DEVELOPMAN BOYU",
                  style: Sabitler.detayStyle,
                )),
              ),
            ),
          ),
          SliverPadding(
              padding:
                  EdgeInsets.only(top: 16, bottom: 16, left: 40, right: 40),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:30,left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 130,
                            color: Colors.white,
                            child: Center(
                              child: TextField(
                                controller: x,
                                //textAlign: TextAlign.center,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 2.0),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  filled: true,
                                  fillColor: Colors.grey.shade400,
                                  hintText: "Yarıçap",
                                  
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade700,
                                          width: 2.0),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      )),
                                ),
                                keyboardType: TextInputType.number,
                                keyboardAppearance: Brightness.dark,
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 130,
                            color: Colors.white,
                            child: Center(
                              child: TextField(
                                controller: y,
                                 cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 2.0)),
                                  filled: true,
                                  fillColor: Colors.grey.shade400,
                                  hintText: "Some Açısı",
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade700,
                                          width: 2.0),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      )),
                                ),
                                keyboardType: TextInputType.number,
                                keyboardAppearance: Brightness.dark,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                   SizedBox(
                     height: 25,
                   ),
                  ],
                ),
              ),
              ),
          SliverPadding(
            padding:EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 37,right:37),
                child: Visibility(
                  visible: isVisible,
                  child: Container(
                    
                    width: 75,
                    height: 45,
                     decoration: BoxDecoration(
                        border: Border.all(
                            width: 0.5,
                            color: Colors.grey,
                            style: BorderStyle.solid),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 2,
                            offset: Offset(6, 7), // Shadow position
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30), // radius of 10
                        color: Color.fromRGBO(105, 152, 171, 1),
                        // green as background color
                        ),
                        child:
                        Center(child: Text("${sonuc.toStringAsFixed(2)} Metre",style: Sabitler.detayStyle,)),
                  ),
                ),
              ),
            ), ),
          SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverToBoxAdapter(
              child: Center(
                child: SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(64, 104, 130, 1),

                    ),
                    onPressed: () {
                      setState(() {
                        hesapla();
                       });
                      isVisible =!isVisible;
                      print("basıldı");
                    },
                    child: Text("Hesapla"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
 ;
  }
}