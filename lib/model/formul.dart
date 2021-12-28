class Formul {

  final String _formulAdi;
  final String _formulKucukResim;

  get formulAdi => this._formulAdi;


  get formulKucukResim => this._formulKucukResim;

  Formul(this._formulAdi, this._formulKucukResim);
  
  @override
  String toString() {

  
    return '$_formulAdi - $_formulKucukResim';
  }
}