abstract class BaseModel {

  String _id;
  String get id => _id;
  
  set id(String id) {
    this._id = id;
  }

  BaseModel();
  Map<String, dynamic> toMap();
  Map<String, dynamic> onlyManon();
  Map<String, dynamic> onlyScore();
  Map<String, dynamic> onlyMarc();

  Map<String, dynamic> onlyEmilie();
  Map<String, dynamic> onlyKim();
  Map<String, dynamic> onlyDiana();
  Map<String, dynamic> onlyLeonard();
  Map<String, dynamic> onlySamuel();
  Map<String, dynamic> onlyFlorian();
  Map<String, dynamic> onlyNicolas();

  Map<String, dynamic> onlyMathilde();
  Map<String, dynamic> onlyFatou();
  Map<String, dynamic> onlyLoic();
  Map<String, dynamic> onlyKatrine();
  Map<String, dynamic> onlyAnne();
  Map<String, dynamic> onlyTatiana();
  Map<String, dynamic> onlyPastora();
  Map<String, dynamic> onlyMariana();
  Map<String, dynamic> onlyNivine();
  Map<String, dynamic> onlyNiveau();

  Map<String, dynamic> onlyTune();
  Map<String, dynamic> onlyBeurre();
  Map<String, dynamic> onlySwag();
  Map<String, dynamic> onlyGrailler();
  Map<String, dynamic> onlyFlouze();
  Map<String, dynamic> onlyMuffin();


  fromMap(Map<String, dynamic> map);

  /// In order to create a new object of same type based on exiting one: ok
  BaseModel createNew();

}
