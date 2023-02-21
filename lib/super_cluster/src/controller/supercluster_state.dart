
import 'package:asasa/super_cluster/src/layer/cluster_data.dart';
import 'package:equatable/equatable.dart';

class SuperclusterState extends Equatable {
  final bool loading;

  final ClusterData? aggregatedClusterData;

  const SuperclusterState({
    required this.loading,
    required this.aggregatedClusterData,
  });

  @override
  List<Object?> get props => [loading, aggregatedClusterData];
}
