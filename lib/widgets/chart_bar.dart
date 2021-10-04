import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPctOfTotal;

  ChartBar(this.label, this.spendingAmount, this.spendingPctOfTotal);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //FittedBox forces a widget into available space
        FittedBox(child: Text('€${spendingAmount.toStringAsFixed(0)}')),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 60,
          width: 10,
          //Stack widget allows to put el on the top(overlapping) of each other
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    color: Color.fromRGBO(220, 220, 220, 1),
                    borderRadius: BorderRadius.circular(10)),
              ),
              //FractionallySizedBox allows to create a box that is sized as a fraction of another a value
              //heightFactor has value between 0-1, in this case, it belongs to height of the Container beyond Stack
              FractionallySizedBox(
                heightFactor: spendingPctOfTotal,
                child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10))),
              )
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(label),
      ],
    );
  }
}
