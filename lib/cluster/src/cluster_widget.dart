import 'package:asasa/cluster/src/marker_cluster_layer_options.dart';
import 'package:asasa/cluster/src/node/marker_cluster_node.dart';
import 'package:flutter/material.dart';

class ClusterWidget extends StatelessWidget {
  final MarkerClusterNode cluster;
  final ClusterWidgetBuilder builder;
  final VoidCallback onTap;

  ClusterWidget({
    required this.cluster,
    required this.builder,
    required this.onTap,
  }) : super(key: ObjectKey(cluster));

  @override
  Widget build(BuildContext context) {
    debugPrint('cluster widget ${cluster.markers.length}');
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: builder(context, cluster.mapMarkers),
    );
  }
}
