import 'package:flutter/material.dart';

import 'bmi_calc_result_screen.dart';

class BmiCalcHomeScreen extends StatefulWidget {
  @override
  State<BmiCalcHomeScreen> createState() => _BmiCalcHomeScreenState();
}

class _BmiCalcHomeScreenState extends State<BmiCalcHomeScreen> {
  //글로벌 키를 이해하면 물론 좋지만,
  //이걸 이해 하는데 상당한 노력을 요하기에,
  //그냥 넘어가도 괜찮다.
  final _formKey = GlobalKey<FormState>();

  //입력값을 출력하기 위해서 controller를 활용해야 한다.
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();

  //화면을 닫기 전에 dispose 함수를 사용해서 메모리에서 해제해야함.
  //그래야 메모리 과부하가 안 걸림.

  void dispose() {
    _heightController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI 계산기'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '키',
                  ),
                  controller: _heightController, //TextFormField 속성에 컨트롤러가 있음.
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value?.isEmpty ?? false) {
                      return '키를 입력하세요';
                    }
                  },
                ),
                SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '몸무게',
                    ),
                    controller: _weightController,
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value?.isEmpty ?? false) {
                        return '몸무게를 입력하세요';
                      }
                    }),
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  alignment: Alignment.centerRight,
                  child: ButtonBar(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // 버튼 눌렀을 때
                          if (_formKey.currentState?.validate() ?? false) {}
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BmiCalcResultScreen(
                                    height: double.parse(
                                        _heightController.text.trim()),
                                    weight: double.parse(
                                        _weightController.text.trim()))),
                          );
                        },
                        child: Text('계산'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
