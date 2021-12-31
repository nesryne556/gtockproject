
class CategModel {
  String categ_id;
  String categ_name;


  CategModel(this.categ_id, this.categ_name);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'categ_id': categ_id,
      'categ_name': categ_name,

    };
    return map;
  }

  CategModel.fromMap(Map<String, dynamic> map) {
    categ_id = map['categ_id'];
    categ_name = map['user_name'];

  }
}

