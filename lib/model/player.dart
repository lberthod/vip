import 'package:vip/model/basemodel.dart';
import 'package:vip/service/firestore_service.dart';

class Player extends BaseModel {
  String _manon;
  String _name;

  FirestoreService<Player> db = new FirestoreService<Player>('joueur');


  Player();

  Player.onlyM(this._manon);

  Player.fromValues(this._manon, this._name);
  Player.fromValuesWithId(String id, this._manon, this._name) {
    super.id = id;
  }

  Player.map(dynamic obj) {
    this.id = obj['id'];
    this._manon = obj['title'];
    this._name = obj['description'];
  }

  String get manon => _manon;
  String get name => _name;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['manon'] = _manon;
//    map['name'] = _name;

    return map;
  }

  Map<String, dynamic> onlyManon() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['manon'] = _manon;

    print("r");
    return map;
  }

  String onlyLVLManon(){

    String ma = _manon;

    return ma;
  }

  Player.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this._manon = map['manon'];
    this._name = map['name'];
  }

  Player fromMap(Map<String, dynamic> map) {
    var player = new Player();

    player.id = map['id'];
    player._manon = map['manon'];
    player._name = map['name'];

    return player;
  }

  Player createNew() {
    return Player();
  }
}
