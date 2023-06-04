import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_compass/flutter_compass.dart' as fc;
import 'package:location/location.dart';

part 'compass_event.dart';
part 'compass_state.dart';
part 'compass_bloc.freezed.dart';

class CompassBloc extends Bloc<CompassEvent, CompassState> {
  StreamSubscription? compassSub;

  CompassBloc() : super(const _Initial()) {
    on<_Start>((event, emit) async {
      final loc = Location();

      // this can cause screen flashing on bloc restart
      emit(const CompassState.requestingPermission());

      PermissionStatus permissionStatus = await loc.hasPermission();
      if (permissionStatus == PermissionStatus.denied) {
        permissionStatus = await loc.requestPermission();
        if (permissionStatus != PermissionStatus.granted) {
          return emit(_Denied(
            status: permissionStatus,
          ));
        }
      }

      // all good start listening
      compassSub?.cancel();
      compassSub = fc.FlutterCompass.events?.listen((event) {
        add(CompassEvent.update(event: event));
      });
    });
    on<_Update>((event, emit) {
      emit(CompassState.hasCompass(data: event.event));
    });
  }

  @override
  Future<void> close() {
    compassSub?.cancel();
    return super.close();
  }
}
