import 'package:flutter/material.dart';

class Ad extends StatelessWidget {
  const Ad({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(

            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '일찍 좀 일어나지 그랬어',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text('기왕 늦은 거 편하게 택시타고 가자',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
              Image.network(
                'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
      ),
    );
  }
}
