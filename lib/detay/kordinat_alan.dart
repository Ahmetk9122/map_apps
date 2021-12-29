import 'package:flutter/material.dart';
import 'package:map_app/constants/app_constants.dart';

class kordinat_hesabi extends StatefulWidget {
  kordinat_hesabi({Key? key}) : super(key: key);

  @override
  _kordinat_hesabiState createState() => _kordinat_hesabiState();
}

class _kordinat_hesabiState extends State<kordinat_hesabi> {
   /*h1*/ TextEditingController x = TextEditingController();
   /*h2*/ TextEditingController y = TextEditingController();
   /*a*/  TextEditingController z = TextEditingController();
   /*b*/  TextEditingController v = TextEditingController();
   /*c*/  TextEditingController q = TextEditingController();

  double sonuc =0;
  void hesapla ()
  {
    setState(() {
     double f1 =((double.parse(z.text)*double.parse(x.text))/2);
     double f2 =((double.parse(v.text)*(double.parse(x.text)+double.parse(y.text)))/2);
     double f3 =((double.parse(q.text)*double.parse(y.text))/2);
     sonuc =(f1+f2+f3);
      
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
              left: 40,
              right: 40,
              top: 8,
            ),
            sliver: SliverToBoxAdapter(
              child: Container(
                width: 95,
                height: 55,
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
                  " Dik Koordinat Yöntemiyle Alan\n                     Hesabı",
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
                                  hintText: "h1",
                                  
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
                                  hintText: "h2",
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
                                controller: z,
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
                                  hintText: "a",
                                  
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
                                controller: v,
                                 cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 2.0)),
                                  filled: true,
                                  fillColor: Colors.grey.shade400,
                                  hintText: "b",
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
                     Padding(
                      padding: const EdgeInsets.only(top:30,left: 20, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                            color: Colors.white,
                            child: Center(
                              child: TextField(
                                controller: q,
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
                                  hintText: "c",
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
                        Center(child: Text("${sonuc.toStringAsFixed(2)} M\u{00B2}",style: Sabitler.detayStyle,)),
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