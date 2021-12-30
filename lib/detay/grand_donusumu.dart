import 'package:flutter/material.dart';
import 'package:map_app/constants/app_constants.dart';
import 'package:map_app/helper/data_helper.dart';
import 'package:map_app/model/ders.dart';

class a_Formulu extends StatefulWidget {
  a_Formulu({Key? key}) : super(key: key);

  @override
  _a_FormuluState createState() => _a_FormuluState();
}
class _a_FormuluState extends State<a_Formulu> {
  TextEditingController x = TextEditingController();
  TextEditingController y = TextEditingController();
  TextEditingController z = TextEditingController();
  String girilenDerece ="";
  String girilenDakika ="";
  String girilenSaniye ="";
  double sonuc =0;
  double grand =0;
  void hesapla ()
  {
    setState(() {

     double Derece =(double.parse(x.text));
     double dakika =(double.parse(y.text)/60);
     double saniye =(double.parse(z.text)/3600);
  double derece =(Derece+dakika+saniye);
     sonuc =((derece/180)*200);
    var ekeleneekDers =Ders(ad: "Grand Dönüşümü", deger: sonuc.toStringAsFixed(6));
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
                  "GRAND DÖNÜŞÜMÜ",
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
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 120,
                            color: Colors.white,
                            child: Center(
                              child: TextFormField(
                                onSaved: (deger)
                                {
                                    girilenDerece =deger!;
                                },

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
                                  hintText: "Derece",
                                  
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
                            width: 120,
                            color: Colors.white,
                            child: Center(
                              child: TextFormField(
                                 onSaved: (deger)
                                {
                                    girilenDakika =deger!;
                                },
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
                                  hintText: "Dakika",
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
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                            color: Colors.white,
                            child: Center(
                              child: TextFormField(
                                 onSaved: (deger)
                                {
                                    girilenSaniye=deger!;
                                },
                                controller: z,
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
                                  hintText: "Saniye",
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
                        Center(child: Text(sonuc.toStringAsFixed(6),style: Sabitler.detayStyle,)),
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
  }
 
}
