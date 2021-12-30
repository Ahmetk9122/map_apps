import 'package:map_app/model/ders.dart';

class DataHelper
{
  static List<Ders> tumEklenenDersler=[];
  static dersEkle(Ders ders)
  {
    tumEklenenDersler.add(ders);
  }
}