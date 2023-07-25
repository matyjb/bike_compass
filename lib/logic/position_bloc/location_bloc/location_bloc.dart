import 'dart:async';

import 'package:bike_compass/helpers.dart';
import 'package:bike_compass/logic/position_bloc/location_permission_cubit/location_permission_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

const _refreshIntervalMs = 1000;

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  StreamSubscription? locationSub;
  final LocationPermissionCubit locationPermissionCubit;
  StreamSubscription? locationPermissionSub;

  LocationBloc({required this.locationPermissionCubit})
      : super(const _Initial()) {
    locationPermissionSub = locationPermissionCubit.stream.listen((event) {
      event.mapOrNull(
        granted: (s) {
          // start listening for location
          Location().changeSettings(interval: _refreshIntervalMs);
          locationSub = Location().onLocationChanged.listen((event) {
            add(LocationEvent.locationChange(data: event));
          });
        },
        denied: (s) {
          // stop listening for location
          locationSub?.cancel();
          add(const LocationEvent.noLocation());
        },
      );
    });

    // EVENTS HANDLERS
    on<_LocationChange>((event, emit) {
      if (event.data.latitude != null && event.data.longitude != null) {
        if (state is _HasLocation) {
          final s = state as _HasLocation;
          // check for weird behaviours (massive GPS drift)
          LatLng current = LatLng(event.data.latitude!, event.data.longitude!);
          LatLng last = LatLng(s.data.latitude!, s.data.longitude!);

          final dist = current.distanceTo(last);

          if (dist > _refreshIntervalMs / 1000.0 * 83) {
            // more than 300km/h -> 83m/s
            return;
          }
          // if (dist < 1) {
          //   return;
          // }
        }
        emit(LocationState.hasLocation(data: event.data));
      } else {
        emit(const LocationState.noLocation());
      }
    });
    on<_NoLocation>((event, emit) {
      emit(const LocationState.noLocation());
    });
  }

  @override
  Future<void> close() {
    locationSub?.cancel();
    locationPermissionSub?.cancel();
    return super.close();
  }
}
