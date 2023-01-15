import 'package:flutter/material.dart';

class ListaAcessos extends StatelessWidget {
  const ListaAcessos({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 35,
      itemBuilder: (context, index) => Column(
        children: [Text('Item $index')],
      ),
    );
  }
}
