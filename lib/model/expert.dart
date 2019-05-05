import 'package:vip/model/basemodel.dart';
import 'package:vip/service/firestore_service.dart';

class Expert extends BaseModel {
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
  String _q1c;
  String _q1d;
  String _q1r;
  String _q2;
  String _q2a;
  String _q2b;
  String _q2c;
  String _q2d;
  String _q2r;
  String _q3;
  String _q3a;
  String _q3b;
  String _q3c;
  String _q3d;
  String _q3r;
  String _q1j;
  String _q2j;
  String _q3j;

  FirestoreService<Expert> db = new FirestoreService<Expert>('expert');

  Expert();

  Expert.fromValues(
      this._nom,
      this._phrase,
      this._domain,
      this._link,
      this._q1,
      this._q1a,
      this._q1b,
      this._q1c,
      this._q1d,
      this._q1r,
      this._q2,
      this._q2a,
      this._q2b,
      this._q2c,
      this._q2d,
      this._q2r,
      this._q3,
      this._q3a,
      this._q3b,
      this._q3c,
      this._q3d,
      this._q3r);

  Expert.fromValuesWithId(
      String id,
      this._nom,
      this._phrase,
      this._domain,
      this._link,
      this._q1,
      this._q1a,
      this._q1b,
      this._q1c,
      this._q1d,
      this._q1r,
      this._q2,
      this._q2a,
      this._q2b,
      this._q2c,
      this._q2d,
      this._q2r,
      this._q3,
      this._q3a,
      this._q3b,
      this._q3c,
      this._q3d,
      this._q3r) {
    super.id = id;
  }

  Expert.map(dynamic obj) {
    this.id = obj['id'];
    this._nom = obj['nom'];
    this._phrase = obj['phrase'];
    this._domain = obj['domain'];
    this._link = obj['link'];
    this._q1 = obj['q1'];
    this._q1a = obj['q1a'];
    this._q1b = obj['q1b'];
    this._q1c = obj['q1c'];
    this._q1d = obj['q1d'];
    this._q1r = obj['q1r'];

    this._q2 = obj['q2'];
    this._q2a = obj['q2a'];
    this._q2b = obj['q2b'];
    this._q2c = obj['q2c'];
    this._q2d = obj['q2d'];
    this._q2r = obj['q2r'];

    this._q3 = obj['q3'];
    this._q3a = obj['q3a'];
    this._q3b = obj['q3b'];
    this._q3c = obj['q3c'];
    this._q3d = obj['q3d'];
    this._q3r = obj['q3r'];
  }

  String get nom => _nom;

  String get phrase => _phrase;

  String get domain => _domain;

  String get link => _link;

  String get q1 => _q1;

  String get q1a => _q1a;

  String get q1b => _q1b;

  String get q1c => _q1c;

  String get q1d => _q1d;

  String get q1r => _q1r;

  String get q2 => _q2;

  String get q2a => _q2a;

  String get q2b => _q2b;

  String get q2c => _q2c;

  String get q2d => _q2d;

  String get q2r => _q2r;

  String get q3 => _q3;

  String get q3a => _q3a;

  String get q3b => _q3b;

  String get q3c => _q3c;

  String get q3d => _q3d;

  String get q3r => _q3r;

  String get q1j => _q1j;

  String get q2j => _q2j;

  String get q3j => _q3j;

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
    map['q1c'] = _q1c;
    map['q1d'] = _q1d;
    map['q1r'] = _q1r;
    map['q1j'] = _q1j;
    map['q2j'] = _q2j;
    map['q3j'] = _q3j;

    map['q2'] = _q2;
    map['q2a'] = _q2a;
    map['q2b'] = _q2b;
    map['q2c'] = _q2c;
    map['q2d'] = _q2d;
    map['q2r'] = _q2r;

    map['q3'] = _q3;
    map['q3a'] = _q3a;
    map['q3b'] = _q3b;
    map['q3c'] = _q3c;
    map['q3d'] = _q3d;
    map['q3r'] = _q3r;

    return map;
  }

  Expert.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this._nom = map['nom'];
    this._phrase = map['phrase'];
    this._domain = map['domain'];
    this._link = map['link'];
    this._q1 = map['q1'];
    this._q1a = map['q1a'];
    this._q1b = map['q1b'];
    this._q1c = map['q1c'];
    this._q1d = map['q1d'];
    this._q1r = map['q1r'];
    this._q1j = map['q1j'];
    this._q2j = map['q2j'];
    this._q3j = map['q3j'];

    this._q2 = map['q2'];
    this._q2a = map['q2a'];
    this._q2b = map['q2b'];
    this._q2c = map['q2c'];
    this._q2d = map['q2d'];
    this._q2r = map['q2r'];

    this._q3 = map['q3'];
    this._q3a = map['q3a'];
    this._q3b = map['q3b'];
    this._q3c = map['q3c'];
    this._q3d = map['q3d'];
    this._q3r = map['q3r'];
  }

  Expert fromMap(Map<String, dynamic> map) {
    var expert = new Expert();

    expert.id = map['id'];
    expert._nom = map['nom'];
    expert._phrase = map['phrase'];
    expert._domain = map['domain'];
    expert._link = map['link'];
    expert._q1 = map['q1'];
    expert._q1a = map['q1a'];
    expert._q1b = map['q1b'];
    expert._q1c = map['q1c'];
    expert._q1d = map['q1d'];
    expert._q1r = map['q1r'];
    expert._q1j = map['q1j'];
    expert._q2j = map['q2j'];
    expert._q3j = map['q3j'];

    expert._q2 = map['q2'];
    expert._q2a = map['q2a'];
    expert._q2b = map['q2b'];
    expert._q2c = map['q2c'];
    expert._q2d = map['q2d'];
    expert._q2r = map['q2r'];

    expert._q3 = map['q3'];
    expert._q3a = map['q3a'];
    expert._q3b = map['q3b'];
    expert._q3c = map['q3c'];
    expert._q3d = map['q3d'];
    expert._q3r = map['q3r'];

    return expert;
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

  Map<String, dynamic> onlyScore() {
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

  Expert createNew() {
    return Expert();
  }
}
