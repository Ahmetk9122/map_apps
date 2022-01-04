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
                                    "  Süleyman Demirel Üniversitesi 4.sınıf öğrencisi 3 genciz. Jr.Mobile developer olarak yazılım geliştirmeleri yapmaktayız.",style: Sabitler.aciklamaDetay,),
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
                    "Uygulama Hakkında",
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
                            child: Text("  Mobil işletim sistemlerindeki hızlı gelişmelerle birlikte mobil uygulamalarda daha aktif, yaratıcı ve akıllı hale gelmektedir.  İnsanların akıllı telefonlarıyla ve doğal olarak uygulamalarla geçirdikleri vakitte her geçen gün daha da artmaktadır. Bu uygulamanın amacında harita mühendisliği görevini icra eden mühendislerimizin çalışma sahalarında Excel vb uğraşması zor olan uygulamalar yerine, uygulamanın içeriğinde bulunan hazır formülleri kullanıcı mühendislere sunmak fikri yatar.  Bu fikir doğrultusunda hazırlanan program, kullanıcı mühendislere hem zamandan tasarruf etmek hem de iş yükünü hafifletmek gibi olumlu katkılar verecektir. ",style: Sabitler.aciklamaDetay,),
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
                      Text("Kullanım Koşulları",style:Sabitler.DrawerbaslikSiyah,),
                      Text("KVK ve Gizlilik Politikası",style:Sabitler.DrawerbaslikSiyah,),
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
                                  "  Süleyman Demirel Üniversitesi 4.sınıf öğrencisi 3 genciz. Jr.Mobile developer olarak yazılım geliştirmeleri yapmaktayız.",style: Sabitler.aciklamaDetay,),
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
                  "Uygulama Hakkında",
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
                          child: Text("  Mobil işletim sistemlerindeki hızlı gelişmelerle birlikte mobil uygulamalarda daha aktif, yaratıcı ve akıllı hale gelmektedir.  İnsanların akıllı telefonlarıyla ve doğal olarak uygulamalarla geçirdikleri vakitte her geçen gün daha da artmaktadır. Bu uygulamanın amacında harita mühendisliği görevini icra eden mühendislerimizin çalışma sahalarında Excel vb uğraşması zor olan uygulamalar yerine, uygulamanın içeriğinde bulunan hazır formülleri kullanıcı mühendislere sunmak fikri yatar.  Bu fikir doğrultusunda hazırlanan program, kullanıcı mühendislere hem zamandan tasarruf etmek hem de iş yükünü hafifletmek gibi olumlu katkılar verecektir. ",style: Sabitler.aciklamaDetay,),
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
                    Text("Kullanım Koşulları",style:Sabitler.DrawerbaslikSiyah,),
                    Text("KVK ve Gizlilik Politikası",style:Sabitler.DrawerbaslikSiyah,),
                  ],
                ),
              ),
            ),
          )
        ],
      ),    
                */