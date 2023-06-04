import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  StreamSubscription? locationSub;

  LocationBloc() : super(const _Initial()) {
    on<_Start>((event, emit) async {
      final loc = Location();

      // this can cause screen flashing on bloc restart
      emit(const LocationState.requestingPermission());

      bool serviceEnabled = await loc.serviceEnabled();
      if (!serviceEnabled) {
        serviceEnabled = await loc.requestService();
        if (!serviceEnabled) {
          return emit(_Denied(hasService: serviceEnabled));
        }
      }

      PermissionStatus permissionStatus = await loc.hasPermission();
      if (permissionStatus == PermissionStatus.denied) {
        permissionStatus = await loc.requestPermission();
        if (permissionStatus != PermissionStatus.granted) {
          return emit(_Denied(
            hasService: serviceEnabled,
            status: permissionStatus,
          ));
        }
      }

      // all good start listening
      locationSub?.cancel();
      locationSub = Location().onLocationChanged.listen((event) {
        add(LocationEvent.newLocation(data: event));
      });
    });
    on<_NewLocation>((event, emit) {
      emit(LocationState.hasLocation(data: event.data));
    });
  }

  @override
  Future<void> close() {
    locationSub?.cancel();
    return super.close();
  }
}
