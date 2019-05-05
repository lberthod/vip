import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vip/model/basemodel.dart';
import 'package:vip/userData.dart';

class FirestoreService<T extends BaseModel> {
  String id;
  String _firestorePath;

  CollectionReference _objectCollection;

  FirestoreService(this._firestorePath) {
    this._objectCollection = Firestore.instance.collection(this._firestorePath);
  }

  Future<dynamic> createObject(T obj) async {
    final TransactionHandler createTransaction = (Transaction tx) async {
      final DocumentSnapshot ds = await tx.get(_objectCollection.document());

      obj.id = ds.documentID;

      final Map<String, dynamic> data = obj.toMap();

      await tx.set(ds.reference, data);

      return data;
    };

    return Firestore.instance.runTransaction(createTransaction).then((mapData) {
      var objNew = obj.createNew();

      return objNew.fromMap(mapData);
    }).catchError((error) {
      print('error: $error');
      return null;
    });
  }

  Stream<QuerySnapshot> getList({int offset, int limit}) {
    Stream<QuerySnapshot> snapshots = _objectCollection.snapshots();

    if (offset != null) {
      snapshots = snapshots.skip(offset);
    }

    if (limit != null) {
      snapshots = snapshots.take(limit);
    }

    return snapshots;
  }

  Future<dynamic> updateObject(T note) async {

    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }


    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.toMap());

      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }

  Future<dynamic> updateMarc(T note) async {

    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }


    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
      await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyMarc());

      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }
  Future<dynamic> updateManon(T note) async {
    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyManon());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }
  Future<dynamic> updateEmilie(T note) async {
    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyEmilie());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }
  Future<dynamic> updateDiana(T note) async {
    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyDiana());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }
  Future<dynamic> updateKim(T note) async {
    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyKim());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }
  Future<dynamic> updateLeonard(T note) async {
    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyLeonard());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }

  Future<dynamic> updateSamuel(T note) async {
    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlySamuel());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }
  Future<dynamic> updateAnne(T note) async {
    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyAnne());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }
  Future<dynamic> updateFlorian(T note) async {
    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyFlorian());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }
  Future<dynamic> updateNicolas(T note) async {
    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyNicolas());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }
  Future<dynamic> updateLoic(T note) async {
    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyLoic());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }
  Future<dynamic> updateKatrine(T note) async {
    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyKatrine());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }
  Future<dynamic> updatePastora(T note) async {
    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyPastora());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }

  Future<dynamic> updateMathilde(T note) async {
    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyMathilde());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }
  Future<dynamic> updateMariana(T note) async {
    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyMariana());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }
  Future<dynamic> updateTatiana(T note) async {
    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyTatiana());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }
  Future<dynamic> updateFatou(T note) async {
    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyFatou());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }
  Future<dynamic> updateNivine(T note) async {
    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyNivine());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }

  Future<dynamic> updateScore(T note) async {

    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyScore());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }

  Future<dynamic> updateNiveau(T note) async {

    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyNiveau());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }


  Future<dynamic> updateBeurre(T note) async {

    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyBeurre());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }


  Future<dynamic> updateMuffin(T note) async {

    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyMuffin());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }


  Future<dynamic> updateSwag(T note) async {

    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlySwag());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }


  Future<dynamic> updateTune(T note) async {

    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyTune());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }


  Future<dynamic> updateFlouze(T note) async {

    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyFlouze());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }


  Future<dynamic> updateGrailler(T note) async {

    switch (username) {
      case "pastora":
        {
          id = "b14zNvQt1FyvCEIydX5J";
        }
        break;

      case "leo":
        {
          id = "cRHFieMDOOJHYlAmpGlE";
        }
        break;

      case "fatou":
        {
          id = "o3I4U3gZJQF6Me5gT9jt";
        }
        break;

      case "diana":
        {
          id = "MaYWbCVUBosHREmaGEbm";
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }

    final TransactionHandler updateTransaction = (Transaction tx) async {
      final DocumentSnapshot ds =
          await tx.get(_objectCollection.document(id));

      await tx.update(ds.reference, note.onlyGrailler());
      return {'updated': true};
    };

    return Firestore.instance
        .runTransaction(updateTransaction)
        .then((result) => result['updated'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }



  Future<dynamic> deleteObject(String id) async {



    final TransactionHandler deleteTransaction = (Transaction tx) async {
      final DocumentSnapshot ds = await tx.get(_objectCollection.document(id));

      await tx.delete(ds.reference);
      return {'deleted': true};
    };

    return Firestore.instance
        .runTransaction(deleteTransaction)
        .then((result) => result['deleted'])
        .catchError((error) {
      print('error: $error');
      return false;
    });
  }
}
