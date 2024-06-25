part of 'details_cubit.dart';

class DetailsState {
  final bool loading;
  final CyclesModel selectedCycle;


  DetailsState({
    required this.loading,
    required this.selectedCycle
  });

  factory DetailsState.initial() => DetailsState(
      loading: true,
      selectedCycle: CyclesModel.initWithoutData()
      );
      

  DetailsState copyWith(
          {
            bool? loading,
            CyclesModel? selectedCycle
          }) =>
      DetailsState(
          loading: loading ?? this.loading,
          selectedCycle: selectedCycle ?? this.selectedCycle
          );
}
