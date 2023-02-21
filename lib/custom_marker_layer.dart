import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'cluster/custom_cluster.dart';

class CustomMarkerLayer extends StatefulWidget {
  final List<Marker> markers;

  const CustomMarkerLayer({Key? key, required this.markers}) : super(key: key);

  @override
  State<CustomMarkerLayer> createState() => _CustomMarkerLayerState();
}

class _CustomMarkerLayerState extends State<CustomMarkerLayer> {
  @override
  Widget build(BuildContext context) {
    return MarkerClusterLayer(
      MarkerClusterLayerOptions(
        rotate: true,
        rotateAlignment: Alignment.bottomCenter,
        rotateOrigin: const Offset(0, 0),
        animationsOptions: const AnimationsOptions(
          centerMarker: Duration(milliseconds: 100),
          zoom: Duration(milliseconds: 100),
          fitBound: Duration(milliseconds: 100),
          spiderfy: Duration(milliseconds: 100),
        ),
        anchor: AnchorPos.align(AnchorAlign.bottom),
        onMarkersClustered: (markers) {
          debugPrint('some ${markers.length}');
        },
        onClusterTap: (p0) {
          debugPrint('nmadur');
        },
        onMarkerHoverEnter: (p0) {
          debugPrint('on marker hover enter $p0');
        },
        onMarkerHoverExit: (p0) {
          debugPrint('on marker hover exit');
        },
        centerMarkerOnClick: false,
        spiderfyShapePositions: (index, point) {
          debugPrint('spider $index point ${point.x} ${point.y}');
          return [];
        },
        popupOptions: PopupOptions(
          markerRotate: true,
          buildPopupOnHover: true,
          popupSnap: PopupSnap.mapBottom,
          popupBuilder: (context, marker) {
            return Container(
              height: 150,
              width: 150,
              color: Colors.yellow,
            );
          },
          popupState: PopupState(),
        ),
        spiderfyCluster: true,
        zoomToBoundsOnClick: true,
        showPolygon: false,
        maxClusterRadius: 120,
        size: const Size(40, 40),
        fitBoundsOptions: const FitBoundsOptions(
          inside: true,
          padding: EdgeInsets.all(50),
        ),
        markers: widget.markers,
        polygonOptions: const PolygonOptions(
          isDotted: true,
          borderColor: Colors.blueAccent,
          color: Colors.black12,
          borderStrokeWidth: 3,
        ),
        builder: (context, markers) {
          //20+, 50+, 99+
          int markerLength = markers.length;
          late final String length;
          if (20 <= markerLength) {
            length = '20+';
          } else if (20 > markerLength && 10 < markerLength) {
            length = '10+';
          } else if (10 > markerLength && 5 < markerLength) {
            length = '5+';
          } else {
            length = markerLength.toString();
          }
          debugPrint('length is of markers $length $markerLength');
          return CircleAvatar(
            backgroundColor: Colors.yellow,
            child: Text(length),
          );
          // return FloatingActionButton(
          //   onPressed: null,
          //   child: Text(markers.length.toString()),
          // );
        },
      ),
      FlutterMapState.maybeOf(context)!,
    );
  }
}
