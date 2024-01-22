import 'package:flutter/material.dart';

class Telaprincipal extends StatefulWidget {
  const Telaprincipal({super.key});

  @override
  State<Telaprincipal> createState() => _TelaprincipalState();
}

class _TelaprincipalState extends State<Telaprincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu_outlined,
          ),
        ),
        title: const Text("LicitBank"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_2_rounded),
          )
        ],
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              child: SearchBar(),
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
