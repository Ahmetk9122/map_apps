import 'package:flutter/material.dart';
import 'package:map_app/constants/app_constants.dart';
import 'package:map_app/data/strings.dart';
import 'package:map_app/model/formul.dart';
import 'package:map_app/pages/formul_item.dart';
import 'package:map_app/pages/sliver_appbars.dart';

class Anasayfa extends StatefulWidget {
  late List<Formul> tumFormuller;
  Anasayfa() {
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
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
       sliAppbar(),
        SliverPadding(
          padding: EdgeInsets.all(8),
          sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                  _dinamikElemanUretenFonksiyon,
                  childCount: widget.tumFormuller.length),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 25,
                  crossAxisSpacing: 25,
                  mainAxisExtent: 170)),
        )

        /*
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: tumFormuller.length,
              itemBuilder: (BuildContext context, index) {
                return FormulItem(listelenenFormul: tumFormuller[index]);
              }),
            )
            )
            */
      ],
    );
  }

  Widget? _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return FormulItem(listelenenFormul: widget.tumFormuller[index]);
  }
}
