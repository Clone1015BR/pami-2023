import 'package:flutter/material.dart';
import 'package:agenda/domain/agenda.dart';

class AgendaPage extends StatelessWidget {
  final Agenda agenda;

  const AgendaPage({
    super.key,
    required this.agenda
    });

  @override
  Widget build(BuildContext context) {
   final theme = Theme.of(context);
  
    return Scaffold(
      appBar: AppBar(
        title: Text(agenda.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Image.network(agenda.foto),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Nome: ${agenda.nome}", style: theme.textTheme.headline4,),
                ],
              ),
            ),
             Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Email: ${agenda.email}"),
                  Text("Data de Aniversário: ${agenda.datanascimento}"),
                  Text("Idade: ${agenda.idade}"),
                  Text("Telefone: ${agenda.telefone}"),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}