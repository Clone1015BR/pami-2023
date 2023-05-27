import 'package:flutter/material.dart';
import 'package:agenda/data/agenda_repositorio.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final agendas = loadAgenda();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Agenda"),
      ),
      body: ListView.separated(

        separatorBuilder: (context, index) => const Divider(),
        itemCount: agendas.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: (){
            Navigator.pushNamed(
              context, "/agenda",
              arguments: agendas[index],
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(agendas[index].nome)
              ],
            ),
            ),
        ),
      ),
    );
  }
}