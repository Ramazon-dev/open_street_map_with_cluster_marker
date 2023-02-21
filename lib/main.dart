import 'package:asasa/cluster_page.dart';
import 'package:asasa/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SomePage(),
    );
  }
}

class SomePage extends StatefulWidget {
  const SomePage({Key? key}) : super(key: key);

  @override
  State<SomePage> createState() => _SomePageState();
}

class _SomePageState extends State<SomePage> {
  double son = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              child: Transform.rotate(

                angle: son,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.cyanAccent,
                  child: Text(son.toString()),
                ),
              ),
              onTap: () {
                son += 1;
                setState(() {});
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ClusterPage()),
                );
              },
              child: const Text(
                'cluster page',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const HomePage()),
                );
              },
              child: const Text(
                'super cluster page',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
