part of 'home_cubit.dart';

class HomeState {
  final bool loading;
  final List<CyclesModel> cycles;
  final CyclesModel selectedCycle;


  HomeState({
    required this.loading,
    required this.cycles,
    required this.selectedCycle
  });

  factory HomeState.initial() => HomeState(
      loading: true,
      cycles: [],
      selectedCycle: CyclesModel.initWithoutData()
      );
      

  HomeState copyWith(
          {
            bool? loading,
            List<CyclesModel>? cycles,
            CyclesModel? selectedCycle
          }) =>
      HomeState(
          loading: loading ?? this.loading,
          cycles: cycles ?? this.cycles,
          selectedCycle: selectedCycle ?? this.selectedCycle
          );
}
