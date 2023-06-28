import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'toolbar_state.dart';
part 'toolbar_cubit.freezed.dart';

class ToolbarCubit extends Cubit<ToolbarState> {
  ToolbarCubit() : super(const ToolbarState.initial());

  load() {
    emit(const ToolbarState.loading());
    emit(const ToolbarState.loaded());
  }

  toggleFollowMode() {
    if(state is _Loaded){
      var s = state as _Loaded;
      emit(s.copyWith(followMode: !s.followMode));
    }
  }
  toggleExpandedMap() {
    if(state is _Loaded){
      var s = state as _Loaded;
      emit(s.copyWith(expandedMap: !s.expandedMap));
    }
  }
}
