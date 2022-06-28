import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:vrumies/data/services/location/get_current_location.dart';
import 'package:vrumies/presentation/bloc/profile/gmapswidget/google_maps_widget_event.dart';
import 'package:vrumies/presentation/bloc/profile/gmapswidget/google_maps_widget_state.dart';

class GoogleMapsWidgetBloc
    extends Bloc<GoogleMapsWidgetEvent, GoogleMapsWidgetState> {
  GoogleMapsWidgetBloc() : super(InitialGoogleMapsWidgetState()) {
    on<GoogleMapsWidgetEvent>(
      (event, emit) async {
        if (event is GetUserLocation) {
          try {
            Position userPosition = await determinePosition();
            emit(SuccesLoadGoogleMapsWidgetState(
                userPosition.latitude, userPosition.longitude));
          } catch (e) {
            emit(FailureLoadGoogleMapsWidgetState(e.toString()));
          }
        }
      },
    );
  }
}
