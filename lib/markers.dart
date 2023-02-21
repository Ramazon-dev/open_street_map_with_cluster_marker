import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

List<Marker> markers = [
  Marker(
    width: 50,
    height: 50,
    // rotate: true,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    rotateOrigin: Offset.zero,
    rotateAlignment: Alignment.bottomCenter,
    point: LatLng(41.31533, 69.3212962),
    builder: (context) {
      return InkWell(
        onTap: () {
        },
        child: const Icon(Icons.place, size: 50, color: Colors.black),
      );
    },
  ),
  Marker(
    width: 50,
    height: 50,
    // rotate: true,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    rotateOrigin: Offset.zero,
    rotateAlignment: Alignment.bottomCenter,
    point: LatLng(41.31933, 69.3262962),
    builder: (context) {
      return InkWell(
        onTap: () {
          debugPrint('marker tapped');
        },
        child: const Icon(Icons.place, size: 50, color: Colors.black),
      );
    },
  ),
  Marker(
    width: 50,
    height: 50,
    // rotate: true,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    rotateOrigin: Offset.zero,
    rotateAlignment: Alignment.bottomCenter,
    point: LatLng(41.32533, 69.3312962),
    builder: (context) {
      return InkWell(
        onTap: () {
          debugPrint('marker tapped');
        },
        child: const Icon(Icons.place, size: 50, color: Colors.black),
      );
    },
  ),
  Marker(
    width: 50,
    height: 50,
    // rotate: true,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    rotateOrigin: Offset.zero,
    rotateAlignment: Alignment.bottomCenter,
    point: LatLng(41.31433, 69.3282962),
    builder: (context) {
      return InkWell(
        onTap: () {
          debugPrint('marker tapped');
        },
        child: const Icon(Icons.place, size: 50, color: Colors.black),
      );
    },
  ),
  Marker(
    width: 50,
    height: 50,
    // rotate: true,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    rotateOrigin: Offset.zero,
    rotateAlignment: Alignment.bottomCenter,
    point: LatLng(41.31033, 69.3215962),
    builder: (context) {
      return InkWell(
        onTap: () {
          debugPrint('marker tapped');
        },
        child: const Icon(Icons.place, size: 50, color: Colors.black),
      );
    },
  ),
  Marker(
    width: 50,
    height: 50,
    // rotate: true,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    rotateOrigin: Offset.zero,
    rotateAlignment: Alignment.bottomCenter,
    point: LatLng(41.32533, 69.3212962),
    builder: (context) {
      return InkWell(
        onTap: () {
          debugPrint('marker tapped');
        },
        child: const Icon(Icons.place, size: 50, color: Colors.black),
      );
    },
  ),
  Marker(
    width: 50,
    height: 50,
    // rotate: true,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    rotateOrigin: Offset.zero,
    rotateAlignment: Alignment.bottomCenter,
    point: LatLng(41.33933, 69.3362962),
    builder: (context) {
      return InkWell(
        onTap: () {
          debugPrint('marker tapped');
        },
        child: const Icon(Icons.place, size: 50, color: Colors.black),
      );
    },
  ),
  Marker(
    width: 50,
    height: 50,
    // rotate: true,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    rotateOrigin: Offset.zero,
    rotateAlignment: Alignment.bottomCenter,
    point: LatLng(41.332533, 69.3322962),
    builder: (context) {
      return InkWell(
        onTap: () {
          debugPrint('marker tapped');
        },
        child: const Icon(Icons.place, size: 50, color: Colors.black),
      );
    },
  ),
  Marker(
    width: 50,
    height: 50,
    // rotate: true,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    rotateOrigin: Offset.zero,
    rotateAlignment: Alignment.bottomCenter,
    point: LatLng(41.333433, 69.33382962),
    builder: (context) {
      return InkWell(
        onTap: () {
          debugPrint('marker tapped');
        },
        child: const Icon(Icons.place, size: 50, color: Colors.black),
      );
    },
  ),
  Marker(
    width: 50,
    height: 50,
    // rotate: true,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    rotateOrigin: Offset.zero,
    rotateAlignment: Alignment.bottomCenter,
    point: LatLng(41.334033, 69.334215962),
    builder: (context) {
      return InkWell(
        onTap: () {
          debugPrint('marker tapped');
        },
        child: const Icon(Icons.place, size: 50, color: Colors.black),
      );
    },
  ),
  Marker(
    width: 50,
    height: 50,
    // rotate: true,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    rotateOrigin: Offset.zero,
    rotateAlignment: Alignment.bottomCenter,
    point: LatLng(41.32533, 69.3312962),
    builder: (context) {
      return InkWell(
        onTap: () {
          debugPrint('marker tapped');
        },
        child: const Icon(Icons.place, size: 50, color: Colors.black),
      );
    },
  ),
  Marker(
    width: 50,
    height: 50,
    // rotate: true,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    rotateOrigin: Offset.zero,
    rotateAlignment: Alignment.bottomCenter,
    point: LatLng(41.332933, 69.36462962),
    builder: (context) {
      return InkWell(
        onTap: () {
          debugPrint('marker tapped');
        },
        child: const Icon(Icons.place, size: 50, color: Colors.black),
      );
    },
  ),
  Marker(
    width: 50,
    height: 50,
    // rotate: true,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    rotateOrigin: Offset.zero,
    rotateAlignment: Alignment.bottomCenter,
    point: LatLng(41.333533, 69.34412962),
    builder: (context) {
      return InkWell(
        onTap: () {
          debugPrint('marker tapped');
        },
        child: const Icon(Icons.place, size: 50, color: Colors.black),
      );
    },
  ),
  Marker(
    width: 50,
    height: 50,
    // rotate: true,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    rotateOrigin: Offset.zero,
    rotateAlignment: Alignment.bottomCenter,
    point: LatLng(41.354433, 69.39282962),
    builder: (context) {
      return InkWell(
        onTap: () {
          debugPrint('marker tapped');
        },
        child: const Icon(Icons.place, size: 50, color: Colors.black),
      );
    },
  ),
  Marker(
    width: 50,
    height: 50,
    // rotate: true,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    rotateOrigin: Offset.zero,
    rotateAlignment: Alignment.bottomCenter,
    point: LatLng(41.366033, 69.3665962),
    builder: (context) {
      return InkWell(
        onTap: () {
          debugPrint('marker tapped');
        },
        child: const Icon(Icons.place, size: 50, color: Colors.black),
      );
    },
  ),
  Marker(
    width: 50,
    height: 50,
    // rotate: true,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    rotateOrigin: Offset.zero,
    rotateAlignment: Alignment.bottomCenter,
    point: LatLng(41.300533, 69.30012962),
    builder: (context) {
      return InkWell(
        onTap: () {
          debugPrint('marker tapped');
        },
        child: const Icon(Icons.place, size: 50, color: Colors.black),
      );
    },
  ),
  Marker(
    width: 50,
    height: 50,
    // rotate: true,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    rotateOrigin: Offset.zero,
    rotateAlignment: Alignment.bottomCenter,
    point: LatLng(41.3113933, 69.300362962),
    builder: (context) {
      return InkWell(
        onTap: () {
          debugPrint('marker tapped');
        },
        child: const Icon(Icons.place, size: 50, color: Colors.black),
      );
    },
  ),
  Marker(
    width: 50,
    height: 50,
    // rotate: true,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    rotateOrigin: Offset.zero,
    rotateAlignment: Alignment.bottomCenter,
    point: LatLng(41.39932533, 69.399322962),
    builder: (context) {
      return InkWell(
        onTap: () {
          debugPrint('marker tapped');
        },
        child: const Icon(Icons.place, size: 50, color: Colors.black),
      );
    },
  ),
  Marker(
    width: 50,
    height: 50,
    // rotate: true,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    rotateOrigin: Offset.zero,
    rotateAlignment: Alignment.bottomCenter,
    point: LatLng(41.38833433, 69.3883382962),
    builder: (context) {
      return InkWell(
        onTap: () {
          debugPrint('marker tapped');
        },
        child: const Icon(Icons.place, size: 50, color: Colors.black),
      );
    },
  ),
  Marker(
    width: 50,
    height: 50,
    // rotate: true,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    rotateOrigin: Offset.zero,
    rotateAlignment: Alignment.bottomCenter,
    point: LatLng(41.37734033, 69.37734215962),
    builder: (context) {
      return InkWell(
        onTap: () {
          debugPrint('marker tapped');
        },
        child: const Icon(Icons.place, size: 50, color: Colors.black),
      );
    },
  ),
];
