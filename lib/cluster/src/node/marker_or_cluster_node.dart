import 'package:asasa/cluster/src/node/marker_cluster_node.dart';
import 'package:flutter_map/plugin_api.dart';

/// Just a base class which MarkerNode and MarkerClusterNode both extend which
/// allows us to restrict arguments to one of those two classes without having
/// to resort to 'dynamic' which can hide bugs.
abstract class MarkerOrClusterNode {
  MarkerClusterNode? parent;

  MarkerOrClusterNode({required this.parent});

  Bounds pixelBounds(FlutterMapState map);
}
