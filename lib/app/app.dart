import 'package:flutter/material.dart';
import 'package:agenda/domain/agenda.dart';
import 'package:agenda/presentation/pages/agenda_page.dart';
import 'package:agenda/presentation/pages/home_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Minha Agenda",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/agenda": (context) {
          var agenda = ModalRoute.of(context)!.settings.arguments as Agenda;
          return AgendaPage(agenda: agenda);
        }
      },
    );
  }
}