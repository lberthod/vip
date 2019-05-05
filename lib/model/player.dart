import 'package:vip/model/basemodel.dart';
import 'package:vip/service/firestore_service.dart';

class Player extends BaseModel {
  String _manon;
  String _marc;
  String _emilie;
  String _fatou;
  String _nicolas;
  String _diana;
  String _leonard;
  String _mathilde;
  String _nivine;
  String _katrine;
  String _samuel;
  String _tatiana;
  String _loic;
  String _anne;
  String _mariana;
  String _kim;
  String _pastora;
  String _florian;
  String _name;
  String _score;
  String _niveau;
  String _tune;
  String _flouze;
  String _beurre;
  String _grailler;
  String _muffin;
  String _swag;

  FirestoreService<Player> db = new FirestoreService<Player>('joueur');

  Player();

  Player.onlyManon(this._manon, this._score, this._niveau);
  Player.onlyMarc(this._marc, this._score, this._niveau);
  Player.onlyEmilie(this._emilie, this._score, this._niveau);
  Player.onlyFatou(this._fatou, this._score, this._niveau);
  Player.onlyNicolas(this._nicolas, this._score, this._niveau);
  Player.onlyDiana(this._diana, this._score, this._niveau);

  Player.onlyLeonard(this._leonard, this._score, this._niveau);
  Player.onlyMathilde(this._mathilde, this._score, this._niveau);
  Player.onlyNivine(this._nivine, this._score, this._niveau);
  Player.onlyKatrine(this._katrine, this._score, this._niveau);
  Player.onlySamuel(this._samuel, this._score, this._niveau);
  Player.onlyLoic(this._loic, this._score, this._niveau);

  Player.onlyAnne(this._anne, this._score, this._niveau);
  Player.onlyMariana(this._mariana, this._score, this._niveau);
  Player.onlyTatiana(this._tatiana, this._score, this._niveau);
  Player.onlyKim(this._kim, this._score, this._niveau);
  Player.onlyPastora(this._pastora, this._score, this._niveau);
  Player.onlyFlorian(this._florian, this._score, this._niveau);

  Player.onlyMs(this._manon, this._score);

  Player.onlyMuffin(this._muffin, this._score);
  Player.onlySwag(this._swag, this._score);
  Player.onlyBeurre(this._beurre, this._score);
  Player.onlyGrailler(this._grailler, this._score);
  Player.onlyFlouze(this._flouze, this._score);
  Player.onlyTune(this._tune, this._score);

  Player.onlyS(this._score);
  Player.onlyN(this._niveau);

  Player.fromValues(
      this._manon,
      this._marc,
      this._emilie,
      this._fatou,
      this._nicolas,
      this._diana,
      this._leonard,
      this._mathilde,
      this._nivine,
      this._katrine,
      this._samuel,
      this._loic,
      this._anne,
      this._tatiana,
      this._mariana,
      this._kim,
      this._pastora,
      this._florian,
      this._name,
      this._niveau,
      this._beurre,
      this._flouze,
      this._grailler,
      this._tune,
      this._muffin,
      this._swag,
      this._score);

  Player.fromValuesWithId(
      String id,
      this._manon,
      this._marc,
      this._emilie,
      this._fatou,
      this._nicolas,

      this._diana,
      this._leonard,
      this._mathilde,
      this._nivine,
      this._katrine,
      this._samuel,

      this._loic,
      this._anne,
      this._tatiana,
      this._mariana,
      this._kim,
      this._pastora,
      this._florian,
      this._niveau,

      this._swag,
      this._muffin,
      this._tune,
      this._grailler,
      this._flouze,
      this._beurre,

      this._name,
      this._score) {
    super.id = id;
  }

  Player.map(dynamic obj) {
    this.id = obj['id'];

    this._manon = obj['manon'];
    this._marc = obj['marc'];
    this._emilie = obj['emilie'];
    this._fatou = obj['fatou'];
    this._nicolas = obj['nicolas'];
    this._diana = obj['diana'];

    this._leonard = obj['leonard'];
    this._mathilde = obj['mathilde'];
    this._nivine = obj['nivine'];
    this._katrine = obj['katrine'];
    this._samuel = obj['samuel'];
    this._loic = obj['loic'];

    this._anne = obj['anne'];
    this._tatiana = obj['tatiana'];
    this._mariana = obj['mariana'];
    this._kim = obj['kim'];
    this._pastora = obj['pastora'];
    this._florian = obj['florian'];
    this._niveau = obj['niveau'];

    this._flouze = obj['flouze'];
    this._beurre = obj['beurre'];
    this._grailler = obj['grailler'];
    this._tune = obj['tune'];
    this._swag = obj['swag'];
    this._muffin = obj['muffin'];


    this._name = obj['name'];
    this._score = obj['score'];
  }

  String get manon => _manon;
  String get marc => _marc;
  String get emilie => _emilie;
  String get fatou => _fatou;
  String get nicolas => _nicolas;
  String get nivine => _nivine;

  String get diana => _diana;
  String get leonard => _leonard;
  String get mathilde => _mathilde;
  String get katrine => _katrine;
  String get samuel => _samuel;
  String get loic => _loic;

  String get anne => _anne;
  String get tatiana => _tatiana;
  String get mariana => _mariana;
  String get kim => _kim;
  String get pastora => _pastora;
  String get florian => _florian;

  String get swag => _swag;

  String get muffin => _muffin;

  String get beurre => _beurre;

  String get grailler => _grailler;

  String get flouze => _flouze;

  String get tune => _tune;

  String get name => _name;
  String get niveau => _niveau;

  String get score => _score;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['manon'] = _manon;
    map['marc'] = _marc;
    map['emilie'] = _emilie;
    map['fatou'] = _fatou;
    map['nicolas'] = _nicolas;
    map['niveau'] = _niveau;

    map['diana'] = _diana;
    map['leonard'] = _leonard;
    map['mathilde'] = _mathilde;
    map['katrine'] = _katrine;
    map['samuel'] = _samuel;
    map['loic'] = _loic;
    map['nivine'] = _nivine;

    map['anne'] = _anne;
    map['tatiana'] = _tatiana;
    map['mariana'] = _mariana;
    map['kim'] = _kim;
    map['pastora'] = _pastora;
    map['florian'] = _florian;

    map['tune'] = _tune;
    map['flouze'] = _flouze;
    map['swag'] = _swag;
    map['muffin'] = _muffin;
    map['grailler'] = _grailler;
    map['beurre'] = _beurre;

    map['name'] = _name;
    map['score'] = _score;
//    map['name'] = _name;

    return map;
  }

  Map<String, dynamic> onlyManon() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['manon'] = _manon;
    map['niveau'] = _niveau;
    map['score'] = _score;
    return map;
  }
  Map<String, dynamic> onlyMarc() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['marc'] = _marc;
    map['niveau'] = _niveau;
    map['score'] = _score;
    return map;
  }
  Map<String, dynamic> onlyEmilie() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['emilie'] = _emilie;
    map['niveau'] = _niveau;
    map['score'] = _score;
    return map;
  }
  Map<String, dynamic> onlyKim() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['kim'] = _kim;
    map['niveau'] = _niveau;
    map['score'] = _score;
    return map;
  }
  Map<String, dynamic> onlyDiana() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['diana'] = _diana;
    map['niveau'] = _niveau;
    map['score'] = _score;
    return map;
  }
  Map<String, dynamic> onlySamuel() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['samuel'] = _samuel;
    map['niveau'] = _niveau;
    map['score'] = _score;
    return map;
  }
  Map<String, dynamic> onlyFlorian() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['florian'] = _florian;
    map['niveau'] = _niveau;
    map['score'] = _score;
    return map;
  }
  Map<String, dynamic> onlyNicolas() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['nicolas'] = _nicolas;
    map['niveau'] = _niveau;
    map['score'] = _score;
    return map;
  }
  Map<String, dynamic> onlyLoic() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['loic'] = _loic;
    return map;
  }
  Map<String, dynamic> onlyLeonard() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['leonard'] = _leonard;
    map['niveau'] = _niveau;
    map['score'] = _score;
    return map;
  }
  Map<String, dynamic> onlyFatou() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['fatou'] = _fatou;
    map['niveau'] = _niveau;
    map['score'] = _score;
    return map;
  }
  Map<String, dynamic> onlyAnne() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['anne'] = _anne;
    map['niveau'] = _niveau;
    map['score'] = _score;
    return map;
  }


  Map<String, dynamic> onlyKatrine() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['katrine'] = _katrine;
    map['niveau'] = _niveau;
    map['score'] = _score;
    return map;
  }
  Map<String, dynamic> onlyMathilde() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['mathilde'] = _mathilde;
    map['niveau'] = _niveau;
    map['score'] = _score;
    return map;
  }
  Map<String, dynamic> onlyPastora() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['pastora'] = _pastora;
    map['niveau'] = _niveau;
    map['score'] = _score;
    return map;
  }
  Map<String, dynamic> onlyMariana() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['mariana'] = _mariana;
    map['niveau'] = _niveau;
    map['score'] = _score;
    return map;
  }
  Map<String, dynamic> onlyTatiana() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['tatiana'] = _tatiana;
    map['niveau'] = _niveau;
    map['score'] = _score;
    return map;
  }
  Map<String, dynamic> onlyNivine() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['nivine'] = _nivine;
    map['niveau'] = _niveau;
    map['score'] = _score;
    return map;
  }
  Map<String, dynamic> onlyNiveau() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['niveau'] = _niveau;

    return map;
  }


  Map<String, dynamic> onlyMuffin() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['muffin'] = _muffin;
    map['score'] = _score;
    return map;
  }


  Map<String, dynamic> onlyTune() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['tune'] = _tune;
    map['score'] = _score;
    return map;
  }


  Map<String, dynamic> onlyGrailler() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['grailler'] = _grailler;
    map['score'] = _score;
    return map;
  }


  Map<String, dynamic> onlySwag() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['swag'] = _swag;
    map['score'] = _score;
    return map;
  }


  Map<String, dynamic> onlyBeurre() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['beurre'] = _beurre;
    map['score'] = _score;
    return map;
  }


  Map<String, dynamic> onlyFlouze() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['flouze'] = _flouze;
    map['score'] = _score;
    return map;
  }



  Map<String, dynamic> onlyScore() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['score'] = _score;
    return map;
  }




  String onlyLVLManon() {
    String ma = _manon;

    return ma;
  }

  Player.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];

    this._manon = map['manon'];
    this._marc = map['marc'];
    this._emilie = map['emilie'];
    this._nicolas = map['nicolas'];
    this._diana = map['diana'];
    this._leonard = map['leonard'];
    this._fatou = map['fatou'];
    this._nivine = map['nivine'];

    this._mathilde = map['mathilde'];
    this._katrine = map['katrine'];
    this._samuel = map['samuel'];
    this._loic = map['loic'];
    this._anne = map['anne'];
    this._tatiana = map['tatiana'];

    this._mariana = map['mariana'];
    this._kim = map['kim'];
    this._pastora = map['pastora'];
    this._florian = map['florian'];
    this._niveau = map['niveau'];

    this._flouze = map['flouze'];
    this._beurre = map['beurre'];
    this._grailler = map['grailler'];
    this._tune = map['tune'];
    this._swag = map['swag'];
    this._muffin = map['muffin'];

    this._name = map['name'];
    this._score = map['score'];
  }

  Player fromMap(Map<String, dynamic> map) {
    var player = new Player();

    player.id = map['id'];
    player._manon = map['manon'];
    player._marc = map['marc'];
    player._emilie = map['emilie'];
    player._nicolas = map['nicolas'];
    player._diana = map['diana'];
    player._leonard = map['leonard'];

    player._mathilde = map['mathilde'];
    player._katrine = map['katrine'];
    player._samuel = map['samuel'];
    player._loic = map['loic'];
    player._anne = map['anne'];
    player._tatiana = map['tatiana'];

    player._mariana = map['mariana'];
    player._nivine = map['nivine'];
    player._pastora = map['pastora'];
    player._kim = map['kim'];
    player._fatou = map['fatou'];
    player._florian = map['florian'];
    player._niveau = map['niveau'];


    player._flouze = map['flouze'];
    player._beurre = map['beurre'];
    player._grailler = map['grailler'];
    player._tune = map['tune'];
    player._swag = map['swag'];
    player._muffin = map['muffin'];

    player._name = map['name'];
    player._score = map['score'];

    return player;
  }

  Player createNew() {
    return Player();
  }
}
