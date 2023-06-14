import 'dart:async';

import 'package:bike_compass/logic/location_permission_cubit/location_permission_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_compass/flutter_compass.dart' as fc;

part 'compass_event.dart';
part 'compass_state.dart';
part 'compass_bloc.freezed.dart';

class CompassBloc extends Bloc<CompassEvent, CompassState> {
  StreamSubscription? compassSub;
  final LocationPermissionCubit locationPermissionCubit;
  StreamSubscription? locationPermissionSub;

  CompassBloc({required this.locationPermissionCubit})
      : super(const _Initial()) {
    locationPermissionSub = locationPermissionCubit.stream.listen((event) {
      event.mapOrNull(
        granted: (s) {
          compassSub?.cancel();
          compassSub = fc.FlutterCompass.events?.listen((event) {
            add(CompassEvent.update(event: event));
          });
        },
        denied: (s) {
          // stop listening for location
          compassSub?.cancel();
          add(const CompassEvent.update());
        },
      );
    });

    // EVENTS HANDLERS
    on<_Update>((event, emit) {
      if (event.event != null) {
        emit(CompassState.hasState(data: event.event!));
      } else {
        emit(const CompassState.noState());
      }
    });
  }

  @override
  Future<void> close() {
    compassSub?.cancel();
    return super.close();
  }
}
