import 'dart:math';

import 'package:asasa/super_cluster/src/widget/rotate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';
import 'package:supercluster/supercluster.dart';

import '../layer/cluster_data.dart';
import '../layer/map_calculator.dart';
import '../layer/supercluster_layer.dart';

class ClusterWidget extends StatelessWidget {
  final LayerCluster<Marker> cluster;
  final ClusterWidgetBuilder builder;
  final VoidCallback onTap;
  final Size size;
  final Point<double> position;
  final Rotate? rotate;

  ClusterWidget({
    Key? key,
    required MapCalculator mapCalculator,
    required this.cluster,
    required this.builder,
    required this.onTap,
    required this.size,
    this.rotate,
  })  : position = _getClusterPixel(mapCalculator, cluster),
        super(key: ValueKey(cluster.uuid));

  @override
  Widget build(BuildContext context) {
    final clusterData = cluster.clusterData as ClusterData;
    final child = GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: builder(
        context,
        LatLng(cluster.latitude, cluster.longitude),
        clusterData.markerCount,
        clusterData.innerData,
      ),
    );
    return Positioned(
      width: size.width,
      height: size.height,
      left: position.x,
      top: position.y,
      child: rotate == null
          ? child
          : Transform.rotate(
              angle: rotate!.angle,
              origin: rotate!.origin,
              alignment: rotate!.alignment,
              child: child,
            ),
    );
  }

  static Point<double> _getClusterPixel(
    MapCalculator mapCalculator,
    LayerCluster<Marker> cluster,
  ) {
    final pos =
        mapCalculator.getPixelFromPoint(mapCalculator.clusterPoint(cluster));

    return mapCalculator.removeClusterAnchor(pos, cluster);
  }
}
