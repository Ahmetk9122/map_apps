import 'package:flutter/material.dart';
import 'package:map_app/constants/app_constants.dart';
import 'package:map_app/detay/bisektris_boyu.dart';
import 'package:map_app/detay/developman_degeri.dart';
import 'package:map_app/detay/egim.dart';
import 'package:map_app/detay/gercek_alan.dart';
import 'package:map_app/detay/gercek_uzunluk.dart';
import 'package:map_app/detay/grand_donusumu.dart';
import 'package:map_app/detay/kordinat_alan.dart';
import 'package:map_app/detay/kurp_teget.dart';
import 'package:map_app/model/formul.dart';

class FormulItem extends StatelessWidget {
  final Formul listelenenFormul;
  const FormulItem({required this.listelenenFormul, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return /*Card(
      child: ListTile(
        leading: Image.asset("assets/img/"+listelenenFormul.formulKucukResim) ,
        title: Text(listelenenFormul.formulAdi),
        subtitle: Text("Formül Sayfasına Git"),
      ),
    );*/
        InkWell(
      onTap: () {
        switch (listelenenFormul.formulAdi) {
          case "Grand Dönüşümü":
            {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => a_Formulu()));
            }
            break;
          case "Eğim Formülü":
            {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => bFormulu()));
            }
            break;
          case "Gerçek Uzunluk":
            {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Olcek()));
            }
            break;
          case "Gerçek Alan":
            {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => gercekAlan()));
            }
            break;
          case "Dik koordinat A.H":
            {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => kordinat_hesabi()));
            }
            break;
          case "Kurp Teğet Boyu":
            {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Teget()));
            }
            break;
          case "Developman (D)":
            {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Developman()));
            }
            break;
          case "Bisektris (BS)":
            {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Bisektris()));
            }
            break;

          /*
    Herbir Formül için bunu çoğalt.
     case "A Formülü": { 
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>a_Formulu()));
   } 
   break;
    
    */
          default:
            {
              print("olmadı ama yaparsın sen ");
            }
            break;
        }
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                width: 0.5, color: Colors.grey, style: BorderStyle.solid),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 2,
                offset: Offset(6, 7), // Shadow position
              ),
            ],
            borderRadius: BorderRadius.circular(30), // radius of 10
            color: Colors.white54,
            // green as background color
            ),
        width: 150,
        height: 150,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 90,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage("assets/img/" +
                              listelenenFormul.formulKucukResim),
                        )),
                      ),
                    ),
                  ),
                  Divider(
                    height: 4,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          listelenenFormul.formulAdi,
                          style: Sabitler.CardStyle,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey.shade800,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
