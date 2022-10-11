import 'package:flutter/material.dart';
import 'package:objquizer/optioncontroller.dart';
import 'package:objquizer/question_object.dart';
import 'package:provider/provider.dart';

class QuestionCard extends StatefulWidget {
  final QuestionObject questionObject;
  const QuestionCard({
    super.key,
    required this.questionObject,
  });

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  int? selectedOptionIndex;
  void _onoptionSelected(int index) {
    setState(() {
      selectedOptionIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Material App Bar'),
      // ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                widget.questionObject.question!,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            ...List.generate(
              widget.questionObject.options!.length,
              (index) => Consumer<Optioncontroller>(builder: (context, value, child) {
                return Option(
                  index: index,
                  text: widget.questionObject.options![index],
                  color: selectedOptionIndex == index ? Colors.green : Colors.grey,
                  ontap: _onoptionSelected,
                  selectoption: value,
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class Option extends StatelessWidget {
  static List optionLetter = ["a", "b", "c", "d", "e", "f"];
  final int index;
  final void Function(int index)? ontap;
  final String text;
  final Color color;
  final Optioncontroller selectoption;

  const Option({
    Key? key,
    required this.index,
    required this.text,
    required this.color,
    required this.ontap,
    required this.selectoption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectoption.optionselect(index);
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          color: color,
          child: Row(
            children: [
              Text(
                optionLetter[index],
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
