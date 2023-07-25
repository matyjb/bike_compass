import 'dart:async';

import 'package:bike_compass/logic/position_bloc/compass_bloc/compass_bloc.dart';
import 'package:bike_compass/logic/position_bloc/location_bloc/location_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'position_event.dart';
part 'position_state.dart';
part 'position_bloc.freezed.dart';

// const positionUpdateRate = Duration(milliseconds: 700);
const positionUpdateRate = Duration(milliseconds: 1500);

class PositionBloc extends Bloc<PositionEvent, PositionState> {
  final LocationBloc locationBloc;
  final CompassBloc compassBloc;

  StreamSubscription? _updateSub;

  PositionBloc({required this.locationBloc, required this.compassBloc})
      : super(const _Initial()) {
    // *### sub to stream periodic
    _updateSub = Stream.periodic(positionUpdateRate).listen((event) {
      LatLng? latLng = locationBloc.state.mapOrNull(hasLocation: (s) {
        if (s.data.latitude != null && s.data.longitude != null) {
          return LatLng(s.data.latitude!, s.data.longitude!);
        }
        return null;
      });
      double? bearing =
          compassBloc.state.mapOrNull(hasState: (s) => s.data.heading);

      if (bearing != null && latLng != null) {
        add(PositionEvent.update(
          latitude: latLng.latitude,
          longitude: latLng.longitude,
          bearing: bearing,
        ));
      } else {
        add(const PositionEvent.setUnknown());
      }
    });

    /// *###

    on<_Update>((event, emit) {
      emit(PositionState.state(
        latitude: event.latitude,
        longitude: event.longitude,
        bearing: event.bearing,
      ));
    });
    on<_SetUnknown>((event, emit) {
      if (state is _State) {
        final s = state as _State;
        emit(PositionState.unknown(
          lastBearing: s.bearing,
          lastLatitude: s.latitude,
          lastLongitude: s.longitude,
        ));
      }
    });
  }

  @override
  Future<void> close() {
    _updateSub?.cancel();
    return super.close();
  }
}
