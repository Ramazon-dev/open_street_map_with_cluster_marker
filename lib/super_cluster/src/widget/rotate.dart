import 'package:asasa/super_cluster/flutter_map_supercluster.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/plugin_api.dart';

@immutable
class Rotate {
  final LayerCluster<Marker>? child;
  final double angle;
  final Offset? origin;
  final AlignmentGeometry? alignment;

  const Rotate({
    required this.angle,
    this.origin,
    this.alignment,
    this.child,
  });
}
