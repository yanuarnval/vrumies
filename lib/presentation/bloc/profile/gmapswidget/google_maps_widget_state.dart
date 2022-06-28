abstract class GoogleMapsWidgetState{

}

class InitialGoogleMapsWidgetState extends GoogleMapsWidgetState {}

class LoadingGoogleMapsWidgetState extends GoogleMapsWidgetState {}

class SuccesLoadGoogleMapsWidgetState extends GoogleMapsWidgetState {
    final double lat;
    final double lng;

    SuccesLoadGoogleMapsWidgetState(this.lat, this.lng);
}

class FailureLoadGoogleMapsWidgetState extends GoogleMapsWidgetState {
  final String errorMessage;

  FailureLoadGoogleMapsWidgetState(this.errorMessage);

  @override
  String toString() {
    return 'FailureLoadProductState{errorMessage: $errorMessage}';
  }
}