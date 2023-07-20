import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_map_state.dart';
part 'app_map_cubit.freezed.dart';

class AppMapCubit extends Cubit<AppMapState> {
  AppMapCubit() : super(const AppMapState());

  toggleFollowMode() {
    emit(state.copyWith(followMode: !state.followMode));
  }

  toggleExpandedMap() {
    emit(state.copyWith(expandedMap: !state.expandedMap));
  }

  selectRouteIndex(int? index) {
    emit(state.copyWith(selectedRouteIndex: index));
  }
}
