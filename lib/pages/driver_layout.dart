import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:map_app/constants/app_constants.dart';

class DrawerMenu extends StatefulWidget {
  DrawerMenu({Key? key}) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        height: 700,
        child: SingleChildScrollView(
          child: Column(
          children: [
            Container(
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ), // radius of 10
                color: Colors.teal.shade900,
              ),
              child: Center(
                child: Text(
                  "MAP APP",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  color: Color.fromRGBO(160, 160, 160, 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ExpansionTile(
                  iconColor: Colors.white,
                  collapsedIconColor: Colors.white54,
                  title: Text(
                    "Biz Kimiz ?",
                    style: Sabitler.aciklamaBaslik,
                  ),
                  children: [
                     ListTile(
                       title: Container(
                        height: 110,
                        width: MediaQuery.of(context).size.width,
                        child:SingleChildScrollView(
                          
                          child:  Padding(
                          padding: const EdgeInsets.only(left:8.0,right:8,bottom:8),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                    "  S??leyman Demirel ??niversitesi 4.s??n??f ????rencisi 3 genciz. Jr.Mobile developer olarak yaz??l??m geli??tirmeleri yapmaktay??z.",style: Sabitler.aciklamaDetay,),
                              ],
                            ),
                          ),
                        ),
                        ),),
                        ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  color:  Color.fromRGBO(160, 160, 160, 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ExpansionTile(
                  iconColor: Colors.white,
                  collapsedIconColor: Colors.white54,
                  title: Text(
                    "Uygulama Hakk??nda",
                    style: Sabitler.aciklamaBaslik,
                  ),
                  children: [
                    ListTile(title:
                     Container(
                          height: 360,
                          width: MediaQuery.of(context).size.width,
                          child: SingleChildScrollView(
                            child:Padding(
                            padding:  const EdgeInsets.only(left:8.0,right:8,bottom:8),
                            child: Text("  Mobil i??letim sistemlerindeki h??zl?? geli??melerle birlikte mobil uygulamalarda daha aktif, yarat??c?? ve ak??ll?? hale gelmektedir.  ??nsanlar??n ak??ll?? telefonlar??yla ve do??al olarak uygulamalarla ge??irdikleri vakitte her ge??en g??n daha da artmaktad??r. Bu uygulaman??n amac??nda harita m??hendisli??i g??revini icra eden m??hendislerimizin ??al????ma sahalar??nda Excel vb u??ra??mas?? zor olan uygulamalar yerine, uygulaman??n i??eri??inde bulunan haz??r form??lleri kullan??c?? m??hendislere sunmak fikri yatar.  Bu fikir do??rultusunda haz??rlanan program, kullan??c?? m??hendislere hem zamandan tasarruf etmek hem de i?? y??k??n?? hafifletmek gibi olumlu katk??lar verecektir. ",style: Sabitler.aciklamaDetay,),
                          ),
                          ),
                        ),
                      ),
                    ],
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    color:  Color.fromRGBO(160, 160, 160, 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: AboutListTile(
                    
                    applicationName: "MAP APP",
                    applicationIcon: Icon(Icons.save),
                    applicationVersion: "V2.0",
                    child: Text("Lisanslar",style:Sabitler.aciklamaBaslik),
                    applicationLegalese: null,
                    icon: Icon(Icons.keyboard ,color:Colors.white ,),
                    aboutBoxChildren: [
                      Text("Lisanslar",style:Sabitler.DrawerbaslikSiyah,),
                      Text("Kullan??m Ko??ullar??",style:Sabitler.DrawerbaslikSiyah,),
                      Text("KVK ve Gizlilik Politikas??",style:Sabitler.DrawerbaslikSiyah,),
                    ],
                  ),
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
/*
  child: Column(
        children: [
          Container(
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ), // radius of 10
              color: Colors.teal.shade900,
            ),
            child: Center(
              child: Text(
                "MAP APP",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                color: Color.fromRGBO(160, 160, 160, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ExpansionTile(
                iconColor: Colors.white,
                collapsedIconColor: Colors.white54,
                title: Text(
                  "Biz Kimiz ?",
                  style: Sabitler.aciklamaBaslik,
                ),
                children: [
                   ListTile(
                     title: Container(
                      height: 110,
                      width: MediaQuery.of(context).size.width,
                      child:SingleChildScrollView(
                        
                        child:  Padding(
                        padding: const EdgeInsets.only(left:8.0,right:8,bottom:8),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                  "  S??leyman Demirel ??niversitesi 4.s??n??f ????rencisi 3 genciz. Jr.Mobile developer olarak yaz??l??m geli??tirmeleri yapmaktay??z.",style: Sabitler.aciklamaDetay,),
                            ],
                          ),
                        ),
                      ),
                      ),),
                      ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                color:  Color.fromRGBO(160, 160, 160, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ExpansionTile(
                iconColor: Colors.white,
                collapsedIconColor: Colors.white54,
                title: Text(
                  "Uygulama Hakk??nda",
                  style: Sabitler.aciklamaBaslik,
                ),
                children: [
                  ListTile(title:
                   Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        child: SingleChildScrollView(
                          child:Padding(
                          padding:  const EdgeInsets.only(left:8.0,right:8,bottom:8),
                          child: Text("  Mobil i??letim sistemlerindeki h??zl?? geli??melerle birlikte mobil uygulamalarda daha aktif, yarat??c?? ve ak??ll?? hale gelmektedir.  ??nsanlar??n ak??ll?? telefonlar??yla ve do??al olarak uygulamalarla ge??irdikleri vakitte her ge??en g??n daha da artmaktad??r. Bu uygulaman??n amac??nda harita m??hendisli??i g??revini icra eden m??hendislerimizin ??al????ma sahalar??nda Excel vb u??ra??mas?? zor olan uygulamalar yerine, uygulaman??n i??eri??inde bulunan haz??r form??lleri kullan??c?? m??hendislere sunmak fikri yatar.  Bu fikir do??rultusunda haz??rlanan program, kullan??c?? m??hendislere hem zamandan tasarruf etmek hem de i?? y??k??n?? hafifletmek gibi olumlu katk??lar verecektir. ",style: Sabitler.aciklamaDetay,),
                        ),
                        ),
                      ),
                    ),
                  ],
              ),
            ),
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  color:  Color.fromRGBO(160, 160, 160, 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: AboutListTile(
                  
                  applicationName: "MAP APP",
                  applicationIcon: Icon(Icons.save),
                  applicationVersion: "V2.0",
                  child: Text("Lisanslar",style:Sabitler.aciklamaBaslik),
                  applicationLegalese: null,
                  icon: Icon(Icons.keyboard ,color:Colors.white ,),
                  aboutBoxChildren: [
                    Text("Lisanslar",style:Sabitler.DrawerbaslikSiyah,),
                    Text("Kullan??m Ko??ullar??",style:Sabitler.DrawerbaslikSiyah,),
                    Text("KVK ve Gizlilik Politikas??",style:Sabitler.DrawerbaslikSiyah,),
                  ],
                ),
              ),
            ),
          )
        ],
      ),    
                */