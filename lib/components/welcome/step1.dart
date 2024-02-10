import 'package:flutter/widgets.dart';

class StepOne extends StatefulWidget {
  const StepOne({super.key});

  @override
  State<StepOne> createState() => _StepOneState();
}

class _StepOneState extends State<StepOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(children: [Text("Strp 1")]),
    );
  }
}
