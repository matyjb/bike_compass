import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';

part 'location_permission_state.dart';
part 'location_permission_cubit.freezed.dart';

class LocationPermissionCubit extends Cubit<LocationPermissionState> {
  LocationPermissionCubit() : super(const LocationPermissionState.initial());

  Future<void> requestPermission() async {
    final loc = Location();

    bool serviceEnabled = await loc.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await loc.requestService();
      if (!serviceEnabled) {
        return emit(_Denied(
          serviceEnabled: serviceEnabled,
        ));
      }
    }

    PermissionStatus permissionStatus = await loc.hasPermission();
    if ([PermissionStatus.denied, PermissionStatus.deniedForever].contains(permissionStatus)) {
      permissionStatus = await loc.requestPermission();
      if (![PermissionStatus.granted, PermissionStatus.grantedLimited].contains(permissionStatus)) {
        return emit(_Denied(
          serviceEnabled: serviceEnabled,
          status: permissionStatus,
        ));
      }
    }

    emit(_Granted(status: permissionStatus));
  }
}
