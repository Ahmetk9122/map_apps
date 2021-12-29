import 'package:flutter/material.dart';
import 'package:map_app/constants/app_constants.dart';
import 'package:map_app/data/strings.dart';
import 'package:map_app/model/formul.dart';
import 'package:map_app/pages/sliver_appbars.dart';


class PageTwo extends StatefulWidget {
  late List<Formul> tumFormuller;
  PageTwo() {
    tumFormuller = veriKaynaginiHazirla();
    print(tumFormuller);
  }
  List<Formul> veriKaynaginiHazirla() {
    List<Formul> gecici = [];
    for (int i = 0; i < 8; i++) {
      var formulAdi = Strings.FORMUL_ADLARI[i];
      var formulKucukResim = Strings.FORMUL_KUCUK_RESIM[i];
      Formul eklenecekFormul = Formul(formulAdi, formulKucukResim);
      gecici.add((eklenecekFormul));
    }
    return gecici;
  }

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  late List<String> tumFormuller1 = Strings.FORMUL_ADLARI;
  late List<String> kucukresim = Strings.FORMUL_KUCUK_RESIM;
  late List<String> aciklama = Strings.FORMUL_ACIKLAMA;

  @override
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        sliAppbar(),
        SliverPadding(
          padding: EdgeInsets.all(8),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: widget.tumFormuller.length),
          ),
        ),
      ],
    );

    /*ListView.builder(
      itemCount: tumFormuller.length,
      itemBuilder: (context, index) {
        return ExpansionTile(
          key: PageStorageKey("$index"),
          title: Text(Strings.FORMUL_ADLARI[index]),
          leading: CircleAvatar(
            child:
                Image.asset("assets/img/" + Strings.FORMUL_KUCUK_RESIM[index]),
          ),
        );
      },
    );*/
  }

  Widget? _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          color: index % 2 == 0 ? Color.fromRGBO(118, 132, 120, 1) : Color.fromRGBO(83, 99, 86, 1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: ExpansionTile(
          iconColor: Colors.white,
          collapsedIconColor: Colors.white54,
          title: Text(
            Strings.FORMUL_ADLARI[index],
            style: index % 2 == 0 ? Sabitler.aciklamaBaslik : Sabitler.aciklamaBaslik,
          ),
          children: [
            Container(
              
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    
                    Strings.FORMUL_ACIKLAMA[index],
                    style: index % 2 == 0
                        ? Sabitler.aciklamaDetay
                        : Sabitler.aciklamaDetay,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
