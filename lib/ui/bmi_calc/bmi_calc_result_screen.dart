import 'package:flutter/material.dart';

class BmiCalcResultScreen extends StatelessWidget {
  //플러터 공부를 할 떄,
  //책을 통해서 할 수 있는데,
  //책을 따라서 하다가,
  //막히는 부분이 있으면,
  //플러터 공식 문서를 보면서 연습을 하면 된다.

  // HOME에서 컨트롤러를 통해 값을 불러옴.
  final double height;
  final double weight;

  BmiCalcResultScreen({
    Key? key,
    required this.height,
    required this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double bmi = weight / ((height / 100) * (height / 100));
    return Scaffold(
      appBar: AppBar(
        title: const Text("비만도 계산기"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop;
              },
              child: Text(
                _calcBmi(bmi),
                style: TextStyle(
                  fontSize: 36,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            _buildIcon(bmi),
          ],
        ),
      ),
    );
  }

  String _calcBmi(double bmi) {
    var result = '저체중';
    if (bmi >= 35) {
      result = '고도 미만';
    } else if (bmi >= 30) {
      result = '2단계 비만';
    } else if (bmi >= 25) {
      result = '1단계 비만';
    } else if (bmi >= 23) {
      result = '과체중';
    } else if (bmi >= 18.5) {
      result = '정상';
    }
    return result;
  }

  Widget _buildIcon(double bmi) {
    if (bmi >= 23) {
      return Icon(
        Icons.sentiment_very_dissatisfied,
        color: Colors.red,
        size: 100,
      );
    } else if (bmi >= 18.5) {
      return Icon(
        Icons.sentiment_satisfied,
        color: Colors.green,
        size: 100,
      );
    } else {
      return Icon(
        Icons.sentiment_dissatisfied,
        color: Colors.orange,
        size: 100,
      );
    }
  }
}
