class Ders
{
  final String ad;
  final String deger;

  Ders({required this.ad,required this.deger});

  @override
  String toString() {
    return "$ad $deger";
  }
}