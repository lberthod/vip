abstract class BaseModel {

  String _id;
  String get id => _id;
  
  set id(String id) {
    this._id = id;
  }

  BaseModel();
  Map<String, dynamic> toMap();
  Map<String, dynamic> onlyManon();


  fromMap(Map<String, dynamic> map);

  /// In order to create a new object of same type based on exiting one: ok
  BaseModel createNew();

}
