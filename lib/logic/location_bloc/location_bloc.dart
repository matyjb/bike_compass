import 'dart:async';

import 'package:bike_compass/logic/location_permission_cubit/location_permission_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

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
          locationSub = Location().onLocationChanged.listen((event) {
            add(LocationEvent.locationChange(data: event));
          });
        },
        denied: (s) {
          // stop listening for location
          locationSub?.cancel();
          add(const LocationEvent.locationChange());
        },
      );
    });

    // EVENTS HANDLERS
    on<_LocationChange>((event, emit) {
      if(event.data != null){
        emit(LocationState.hasLocation(data: event.data!));
      }else{
        emit(const LocationState.noLocation());
      }
    });
  }

  @override
  Future<void> close() {
    locationSub?.cancel();
    locationPermissionSub?.cancel();
    return super.close();
  }
}
