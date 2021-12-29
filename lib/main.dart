import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:map_app/pages/anasayfa.dart';
import 'package:map_app/pages/driver_layout.dart';
import 'package:map_app/pages/ikinci_sayfa.dart';
import 'package:map_app/pages/ucuncu_sayfa.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home:MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int secilenMenuItem=0;
  List<Widget> tumsayfalar =[];
  late Anasayfa sayfaAna;
  late PageTwo sayfaiki;
  late ucuncuSayfa sayfauc;

  @override
  void initState() {
    super.initState();
    sayfaAna =Anasayfa();
    sayfaiki=PageTwo();
    sayfauc=ucuncuSayfa();
    tumsayfalar = [sayfaAna,sayfaiki,sayfauc];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:DrawerMenu(),
      body:tumsayfalar[secilenMenuItem],
      bottomNavigationBar:curvednav(),
    
    );
  }

  CurvedNavigationBar curvednav() {
    return CurvedNavigationBar(
      index: secilenMenuItem,
      height: 50,
      color: Colors.white ,
      buttonBackgroundColor: Color.fromRGBO(221, 221, 221, 1),
      backgroundColor:Colors.teal.shade900.withOpacity(0.9),
      /*Color.fromRGBO(20, 104, 130, 1)*/
      items:
  [
    Icon(Icons.home,size:30),
    Icon(Icons.map,size:30),
    Icon(Icons.question_answer,size:30),
  ],
    onTap: (index)
    {
      setState(() {
        secilenMenuItem =index;
      });
    },
    animationCurve: Curves.easeInBack,
    animationDuration: const Duration(milliseconds:150),
  );
  }

  BottomNavigationBar bottomnavMenu() {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label:"Anasayfa",
        backgroundColor: Color.fromRGBO(26, 55, 77, 1)),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label:"Arama",
        backgroundColor: Color.fromRGBO(64, 104, 130, 1)),
      BottomNavigationBarItem(
        icon: Icon(Icons.add),
        label:"Ekleme",
        backgroundColor:  Color.fromRGBO(105, 152, 171, 1)),
        
    ],
    type: BottomNavigationBarType.shifting,
    currentIndex:secilenMenuItem,
    onTap: (index)
    {
      setState(() {
        secilenMenuItem=index;
      });
    },
    
    );
    
    
    
  } 
  
}
