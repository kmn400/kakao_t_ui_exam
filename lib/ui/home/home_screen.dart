import 'package:flutter/material.dart';

import 'component/ad.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '카카오 T',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    final PageController controller = PageController(initialPage: 0);
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.network(
                    'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('택시', style: TextStyle(fontSize: 20)),
                ],
              ),
              Column(
                children: [
                  Image.network(
                    'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('택시', style: TextStyle(fontSize: 20)),
                ],
              ),
              Column(
                children: [
                  Image.network(
                    'https://cdn.pixabay.com/photo/2021/09/08/15/24/couple-6607143_960_720.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('택시', style: TextStyle(fontSize: 20)),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 150,
            child: PageView(
              /// [PageView.scrollDirection] defaults to [Axis.horizontal].
              /// Use [Axis.vertical] to scroll vertically.
              scrollDirection: Axis.horizontal,
              controller: controller,
              children: <Widget>[
                Ad(),
                Ad(),
                Ad(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
