import 'package:asasa/custom_marker_layer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';

import 'markers.dart';

class ClusterPage extends StatefulWidget {
  const ClusterPage({Key? key}) : super(key: key);

  @override
  State<ClusterPage> createState() => _ClusterPageState();
}

class _ClusterPageState extends State<ClusterPage> {
  MapController mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('cluster page')),
      body: FlutterMap(
        mapController: mapController,
        options: MapOptions(
          onPositionChanged: (position, hasGesture) {},
          minZoom: 4,
          maxZoom: 18,
          center: LatLng(41.3494548, 69.2171245),
          zoom: 9.2,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: const ['a', 'b', 'c'],
          ),
          CustomMarkerLayer(markers: markers),
        ],
      ),
    );
  }
}
