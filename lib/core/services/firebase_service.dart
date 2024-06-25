import 'package:bicycle/core/models/cycles_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


FirebaseFirestore db = FirebaseFirestore.instance;

Future<List<CyclesModel>> getCycles() async{
  List<CyclesModel> cycles = [];

  CollectionReference collectionReferenceCycles = db.collection('people');

  QuerySnapshot queryCycles = await collectionReferenceCycles.get();

   for (var document in queryCycles.docs) {
    var data = document.data() as Map<dynamic, dynamic>;
    data['id'] = document.id;
    cycles.add(CyclesModel.fromJson(data));
  }

  return cycles;
}