import 'package:asasa/markers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';

import 'super_cluster/flutter_map_supercluster.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MapController mapController = MapController();
  final SuperclusterImmutableController controller =
      SuperclusterImmutableController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Super Cluster Page")),
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
          SuperclusterLayer.immutable(
            rotateOrigin: const Offset(0, 0),
            rotateAlignment: Alignment.center,
            anchor: AnchorPos.exactly(Anchor(0, 0)),
            controller: controller,
            rotate: true,
            clusterWidgetSize: const Size(50, 50),
            initialMarkers: markers,
            maxClusterRadius: 180,
            builder: (context, position, markerCount, extraClusterData) {
              late final String length;
              late final Color color;
              if (20 <= markerCount) {
                length = '20+';
                color = Colors.cyan;
              } else if (20 > markerCount && 10 < markerCount) {
                length = '10+';
                color = Colors.cyan.shade300;
              } else if (10 > markerCount && 5 < markerCount) {
                length = '5+';
                color = Colors.cyan.shade200;
              } else {
                color = Colors.cyan.shade100;
                length = markerCount.toString();
              }
              return CircleAvatar(
                backgroundColor: color,
                child: Text(length),
              );
            },
          ),
        ],
      ),
    );
  }
}
