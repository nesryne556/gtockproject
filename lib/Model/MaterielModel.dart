class Materiel {
  String materiel_id ;
  String materiel_name;
  String materielquantite;
  String dateRetour;
  String dateloc;


  MaterielModel(this.materiel_id, this.materiel_name, this.materielquantite, this.dateRetour,this.dateloc);

  var map = <String, dynamic>{


  };
  return map;
}

static Materiel fromMap(Map<String, dynamic> json) {
return Materiel(

}
}
