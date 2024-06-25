import 'package:bicycle/core/models/cycles_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class HomeDataSource {
  Future<List<CyclesModel>> getCycles();
}

class HomeDataSourceImpl implements HomeDataSource {
  final FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  Future<List<CyclesModel>> getCycles() async{
  List<CyclesModel> cycles = [];

  CollectionReference collectionReferenceCycles = db.collection('cycles');

  QuerySnapshot queryCycles = await collectionReferenceCycles.get();

   for (var document in queryCycles.docs) {
    var data = document.data() as Map<dynamic, dynamic>;
    data['id'] = document.id;
    cycles.add(CyclesModel.fromJson(data));
  }

  return cycles;
}
}
