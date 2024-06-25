import 'package:bicycle/core/models/cycles_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {


  DetailsCubit() : super(DetailsState.initial());

  void onDetailsPageLoad(Map<String, dynamic> params) async {
    emit(state.copyWith(loading: true, selectedCycle: params["cycle"]));
    await Future.delayed(Duration(seconds: 2));
    emit(state.copyWith(loading: false));
  }



}
