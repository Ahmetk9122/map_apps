import 'package:flutter/material.dart';
import 'package:map_app/data/strings.dart';
import 'package:map_app/model/formul.dart';
import 'package:map_app/pages/formul_item.dart';



// ignore: camel_case_types
class formul_Listeleri extends StatelessWidget {

   late List<Formul> tumFormuller;
   formul_Listeleri()
   {
    tumFormuller =veriKaynaginiHazirla();
    print(tumFormuller);
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Formül Listesi"),
      ),
      body: Center(
        child:/*ListView.builder(itemCount:tumFormuller.length,itemBuilder: (context, index)
        {
          return FormulItem(listelenenFormul: tumFormuller[index],);
        }),*/
        Padding(
          padding: const EdgeInsets.all(8.0),
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
        ),
        ),
    );
  }

  List<Formul> veriKaynaginiHazirla() {
     List<Formul> gecici =[];
    for(int i=0;i<12;i++)
    {
      var formulAdi=Strings.FORMUL_ADLARI[i];
      var formulKucukResim=Strings.FORMUL_KUCUK_RESIM[i];
      Formul eklenecekFormul =Formul(formulAdi,formulKucukResim);
      gecici.add((eklenecekFormul));
    }
    return gecici;
  }
}