import 'package:flutter/material.dart';

class Bars extends StatelessWidget {
  String label;
  double spendingAmount;
  double spendingAmountPercentage;

  Bars({
    Key? key,
    required this.label,
    required this.spendingAmount,
    required this.spendingAmountPercentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 20,
          child: FittedBox(
            child: Text('\$${spendingAmount.toStringAsFixed(0)}'),
          ),
        ),
        const SizedBox(height: 10),
        // ignore: sized_box_for_whitespace
        Container(
          height: 60,
          width: 10,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(220, 255, 235, 246),
                ),
              ),
              FractionallySizedBox(
                heightFactor: spendingAmountPercentage,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(label),
      ],
    );
  }
}
