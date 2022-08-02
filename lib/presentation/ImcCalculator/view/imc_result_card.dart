import 'package:flutter/material.dart';

class ImcResultCard extends StatelessWidget {
  const ImcResultCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResultCard(categoryValue: "Saudavel", imcValue: "10");
  }
}

class ResultCard extends StatelessWidget {
  const ResultCard(
      {super.key, required this.imcValue, required this.categoryValue});

  final String imcValue;
  final String categoryValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "VOCÊ ESTÁ",
          style: TextStyle(
            color: Theme.of(context).secondaryHeaderColor,
            fontSize: 12,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          categoryValue,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 27,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          "SEU PESO IDEAL É ENTRE",
          style: TextStyle(
            color: Theme.of(context).secondaryHeaderColor,
            fontSize: 12,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          "50kg A 65kg",
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 27,
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 56,
        ),
        Text(
          imcValue,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
