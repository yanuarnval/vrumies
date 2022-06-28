import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:vrumies/domain/location_mark_model.dart' as model;
import 'package:vrumies/presentation/bloc/profile/gmapswidget/google_maps_widget_bloc.dart';
import 'package:vrumies/presentation/bloc/profile/gmapswidget/google_maps_widget_event.dart';
import 'package:vrumies/presentation/bloc/profile/gmapswidget/google_maps_widget_state.dart';
import 'package:vrumies/shared/colors_value.dart';

class GoogleMapsWidget extends StatefulWidget {
  const GoogleMapsWidget({Key? key}) : super(key: key);

  @override
  State<GoogleMapsWidget> createState() => _GoogleMapsWidgetState();
}

class _GoogleMapsWidgetState extends State<GoogleMapsWidget> {
  late GoogleMapController mapController;
  final Map<String, Marker> _markers = {};
  late LatLng posUser;

  void _onMapCreated(GoogleMapController controller) async {
    mapController = controller;
    BitmapDescriptor userImgMarker = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(100, 100)),
      "assets/images/account.png",
    );
    BitmapDescriptor office0 = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(100, 100)),
      "assets/images/office1.png",
    );
    BitmapDescriptor office1 = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(100, 100)),
      "assets/images/office2.png",
    );
    BitmapDescriptor office2 = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(100, 100)),
      "assets/images/office3.png",
    );
    BitmapDescriptor office3 = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(100, 100)),
      "assets/images/office4.png",
    );
    BitmapDescriptor office4 = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(100, 100)),
      "assets/images/office5.png",
    );
    BitmapDescriptor office5 = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(100, 100)),
      "assets/images/office6.png",
    );
    List<BitmapDescriptor> _imgmark = [office0,office1, office2, office3,office4,office5];
    final googleOffices = model.Locations.fromJson(
      jsonDecode(
        await rootBundle.loadString('assets/icons/location.json'),
      ),
    );
    setState(() {
      _markers.clear();
      for (final office in googleOffices.offices) {
        final marker = Marker(
          markerId: MarkerId(office.name),
          position: LatLng(office.lat, office.lng),
          icon: _imgmark[office.id],
          infoWindow: InfoWindow(
            title: office.name,
            snippet: office.address,
          ),
        );
        _markers[office.name] = marker;
      }
      _markers['user'] = Marker(
          markerId: MarkerId('user'), position: posUser, icon: userImgMarker);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GoogleMapsWidgetBloc(),
      child: BlocBuilder<GoogleMapsWidgetBloc, GoogleMapsWidgetState>(
        builder: (context, state) {
          if (state is InitialGoogleMapsWidgetState) {
            context.read<GoogleMapsWidgetBloc>().add(GetUserLocation());
          }
          if (state is SuccesLoadGoogleMapsWidgetState) {
            posUser = LatLng(state.lat, state.lng);
            return GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: LatLng(state.lat, state.lng),
                zoom: 10.0,
              ),
              markers: _markers.values.toSet(),
            );
          }
          return const Center(
            child: CircularProgressIndicator(
              color: ColorsValue.green,
            ),
          );
        },
      ),
    );
  }
}
