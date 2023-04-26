import 'package:flutter/material.dart';
import 'package:quiz/presentation/widgets/question_option_widget.dart';
import 'package:quiz/presentation/widgets/question_text_widget.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  var _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Question"),
      ),
      body: AnimatedOpacity(
        opacity: _visible ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 500),

        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: QuestionTextWidget(text: "Qual a cor das roupas do Mario?",)
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      QuestionOptionWidget(text: "Vermelho e Azul", action: onAnswered),
                      QuestionOptionWidget(text: "Amarelo e Verde", action: onAnswered),
                      QuestionOptionWidget(text: "Azul e Vermelho", action: onAnswered),
                      QuestionOptionWidget(text: "Vermelho e Amarelo", action: onAnswered),
                  ],
               ),
             ),
            ),
          ],
        ),
      )
    );
  }

  void onAnswered(String answer){
    setState(() {
      _visible = false;
    });

  }
}