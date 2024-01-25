import 'package:anime_quiz/common/widgets/k_chip.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Column(children: [
        Row(
          children: [Text("Ram bahadur"), kChip(child: Text("Level 10"))],
        )  Row(
          children: [Text("Ram bahadur"), kChip(child: Text("Level 10"))],
        )  Row(
          children: [Text("Ram bahadur"), kChip(child: Text("Level 10"))],
        )  Row(
          children: [Text("Ram bahadur"), kChip(child: Text("Level 10"))],
        )  Row(
          children: [Text("Ram bahadur"), kChip(child: Text("Level 10"))],
        )  Row(
          children: [Text("Ram bahadur"), kChip(child: Text("Level 10"))],
        )  Row(
          children: [Text("Ram bahadur"), kChip(child: Text("Level 10"))],
        )  Row(
          children: [Text("Ram bahadur"), kChip(child: Text("Level 10"))],
        )
      ],),
    );
  }
}
