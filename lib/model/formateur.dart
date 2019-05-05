import 'package:vip/model/basemodel.dart';
import 'package:vip/service/firestore_service.dart';

class Formateur extends BaseModel {
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

  String _nom;
  String _phrase;
  String _domain;
  String _link;
  String _q1;
  String _q1a;
  String _q1b;
  String _q1r;
  String _q2;
  String _q2a;
  String _q2b;
  String _q2r;
  String _q3;
  String _q3a;
  String _q3b;

  String _q3r;

  FirestoreService<Formateur> db = new FirestoreService<Formateur>('expert');


  Formateur();


  Formateur.fromValues(this._nom, this._phrase, this._domain, this._link, this._q1, this._q1a, this._q1b,  this._q1r
      ,this._q2, this._q2a, this._q2b,  this._q2r
      ,this._q3, this._q3a, this._q3b,  this._q3r);
  Formateur.fromValuesWithId(String id, this._nom, this._phrase, this._domain, this._link, this._q1, this._q1a, this._q1b, this._q1r ,this._q2, this._q2a, this._q2b, this._q2r
      ,this._q3, this._q3a, this._q3b,  this._q3r) {
    super.id = id;
  }

  Formateur.map(dynamic obj) {
    this.id = obj['id'];
    this._nom = obj['nom'];
    this._phrase = obj['phrase'];
    this._domain = obj['domain'];
    this._link = obj['link'];
    this._q1 = obj['q1'];
    this._q1a = obj['q1a'];
    this._q1b = obj['q1b'];
    this._q1r = obj['q1r'];

    this._q2 = obj['q2'];
    this._q2a = obj['q2a'];
    this._q2b = obj['q2b'];
    this._q2r = obj['q2r'];

    this._q3 = obj['q3'];
    this._q3a = obj['q3a'];
    this._q3b = obj['q3b'];
    this._q3r = obj['q3r'];
  }


  String get nom => _nom;
  String get phrase => _phrase;
  String get domain => _domain;
  String get link => _link;
  String get q1 => _q1;
  String get q1a => _q1a;
  String get q1b => _q1b;
  String get q1r => _q1r;

  String get q2 => _q2;
  String get q2a => _q2a;
  String get q2b => _q2b;
  String get q2r => _q2r;

  String get q3 => _q3;
  String get q3a => _q3a;
  String get q3b => _q3b;
  String get q3r => _q3r;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['nom'] = _nom;
    map['phrase'] = _phrase;
    map['domain'] = _domain;
    map['link'] = _link;
    map['q1'] = _q1;
    map['q1a'] = _q1a;
    map['q1b'] = _q1b;
    map['q1r'] = _q1r;

    map['q2'] = _q2;
    map['q2a'] = _q2a;
    map['q2b'] = _q2b;
    map['q2r'] = _q2r;

    map['q3'] = _q3;
    map['q3a'] = _q3a;
    map['q3b'] = _q3b;
    map['q3r'] = _q3r;


    return map;
  }

  Formateur.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this._nom = map['nom'];
    this._phrase = map['phrase'];
    this._domain = map['domain'];
    this._link = map['link'];
    this._q1 = map['q1'];
    this._q1a = map['q1a'];
    this._q1b = map['q1b'];
    this._q1r = map['q1r'];

    this._q2 = map['q2'];
    this._q2a = map['q2a'];
    this._q2b = map['q2b'];
    this._q2r = map['q2r'];

    this._q3 = map['q3'];
    this._q3a = map['q3a'];
    this._q3b = map['q3b'];
    this._q3r = map['q3r'];
  }

  Formateur fromMap(Map<String, dynamic> map) {
    var formateur = new Formateur();


    formateur.id= map['id'];
    formateur._nom = map['nom'];
    formateur._phrase  = map['phrase'];
    formateur._domain  = map['domain'];
    formateur._link  = map['link'];
    formateur._q1 = map['q1'];
    formateur._q1a = map['q1a'];
    formateur._q1b = map['q1b'];
    formateur._q1r = map['q1r'];

    formateur._q2 = map['q2'];
    formateur._q2a = map['q2a'];
    formateur._q2b = map['q2b'];
    formateur._q2r = map['q2r'];

    formateur._q3 = map['q3'];
    formateur._q3a = map['q3a'];
    formateur._q3b = map['q3b'];
    formateur._q3r = map['q3r'];

    return formateur;
  }

  Map<String, dynamic> onlyManon() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['manon'] = _nom;

    print("r");
    return map;
  }

  Map<String, dynamic> onlyMarc() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['manon'] = id;

    return map;
  }

  Map<String, dynamic> onlyEmilie() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['emilie'] = _emilie;
    return map;
  }
  Map<String, dynamic> onlyKim() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['kim'] = _kim;
    return map;
  }
  Map<String, dynamic> onlyDiana() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['diana'] = _diana;
    return map;
  }
  Map<String, dynamic> onlySamuel() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['samuel'] = _samuel;
    return map;
  }
  Map<String, dynamic> onlyFlorian() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['florian'] = _florian;
    return map;
  }
  Map<String, dynamic> onlyNicolas() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['nicolas'] = _nicolas;
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
    return map;
  }
  Map<String, dynamic> onlyFatou() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['fatou'] = _fatou;
    return map;
  }
  Map<String, dynamic> onlyAnne() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['fatou'] = _fatou;
    return map;
  }
  Map<String, dynamic> onlyNiveau() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['niveau'] = id;
    return map;
  }


  Map<String, dynamic> onlyKatrine() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['katrine'] = _katrine;
    return map;
  }
  Map<String, dynamic> onlyMathilde() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['mathilde'] = _mathilde;
    return map;
  }
  Map<String, dynamic> onlyPastora() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['pastora'] = _pastora;
    return map;
  }
  Map<String, dynamic> onlyMariana() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['mariana'] = _mariana;
    return map;
  }
  Map<String, dynamic> onlyTatiana() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['tatiana'] = _tatiana;
    return map;
  }
  Map<String, dynamic> onlyNivine() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['nivini'] = _nivine;
    return map;
  }

  Map<String, dynamic> onlyScore() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['manon'] = id;

    return map;
  }


  Map<String, dynamic> onlyMuffin() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }

    return map;
  }


  Map<String, dynamic> onlyTune() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }

    return map;
  }


  Map<String, dynamic> onlyGrailler() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    return map;
  }


  Map<String, dynamic> onlySwag() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }

    return map;
  }


  Map<String, dynamic> onlyBeurre() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }

    return map;
  }


  Map<String, dynamic> onlyFlouze() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }

    return map;
  }


  Formateur createNew() {
    return Formateur();
  }
}
