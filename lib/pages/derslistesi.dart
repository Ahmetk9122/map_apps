import 'package:flutter/material.dart';
import 'package:map_app/constants/app_constants.dart';
import 'package:map_app/helper/data_helper.dart';
import 'package:map_app/model/ders.dart';

class DersListesi extends StatefulWidget {
  const DersListesi({Key? key}) : super(key: key);

  @override
  State<DersListesi> createState() => _DersListesiState();
}

class _DersListesiState extends State<DersListesi> {
  @override
  Widget build(BuildContext context) {
    List<Ders> tumDersler = DataHelper.tumEklenenDersler;
    return tumDersler.length > 0
        ? ListView.builder(
            itemCount: tumDersler.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: UniqueKey(),
                direction: DismissDirection.startToEnd,
                onDismissed: (a) {
                  DataHelper.tumEklenenDersler.removeAt(index);
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Card(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Color.fromRGBO(201, 201, 201, 1),
                    child: ListTile(
                      title: Text(
                        tumDersler[index].ad,
                        style: Sabitler.sayfaucBaslikSiyah,
                      ),
                      subtitle: Text("${tumDersler[index].deger} "),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                ),
              );
            })
        : Container(
            child: Center(
              child: Text(
                "Lütfen İşlem Ekleyiniz.",
                style: Sabitler.baslikStyle,
              ),
            ),
          );
  }
}
