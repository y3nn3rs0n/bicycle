import 'package:bicycle/core/models/cycles_model.dart';
import 'package:bicycle/core/use_case/use_case.dart';
import 'package:bicycle/features/home/domain/usecases/get_cycles_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  GetCyclesUseCase getCyclesUseCase;

  HomeCubit({required this.getCyclesUseCase}) : super(HomeState.initial());

  void onHomeScreenPageLoad() async {
    emit(state.copyWith(loading: true));
    if (state.cycles.isNotEmpty) {
      return;
    } else{
      await getCycles();
    }
    await Future.delayed(Duration(seconds: 2));
    emit(state.copyWith(loading: false));
  }

  Future<List<CyclesModel>?> getCycles() async {

      final result = await getCyclesUseCase(NoParams());
    return result.fold(
      (l) => [],
      (r) {
        emit(state.copyWith(cycles: r, selectedCycle: r?.first));
        return r;
      }
    );

    
  }

  void selectedCycle (CyclesModel selected) {
    emit(state.copyWith(selectedCycle: selected));
  }


}
