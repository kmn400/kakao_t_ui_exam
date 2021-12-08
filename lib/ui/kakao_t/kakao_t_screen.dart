import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/data/fake_data.dart';
import 'package:kakao_t_ui_exam/ui/kakao_t/component/ad_widget.dart';
import 'package:kakao_t_ui_exam/ui/kakao_t/detail_screen.dart';

import 'component/menu_widget.dart';

class kakaoTScreen extends StatelessWidget {
  const kakaoTScreen({Key key}) : super(key: key);

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
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          _buildMenu(context),
          _buildAds(controller),
          _buildNotice(),
        ],
      ),
    );
  }

  Widget _buildMenu(BuildContext context) {
    return GridView.count(
        childAspectRatio: 2 / 3,
        crossAxisCount: 4,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: fakeMenus.map((menu) {
          return GestureDetector(
            child: MenuWidget(
              menu: menu,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailScreen(
                          title: menu.title,
                        )),
              );
            },
          );
        }).toList());
  }

  Widget _buildAds(PageController controller) {
    return SizedBox(
      height: 150,
      child: PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: fakeAds.map((e) => AdWidget(ad: e)).toList(),
        // children: <Widget>[
        //   AdView(
        //     ad: fakeAds[0],
        //   ),
        //   AdView(
        //     ad: fakeAds[1],
        //   ),
        //   AdView(
        //     ad: fakeAds[2],
        //   ),
        // ],
      ),
    );
  }

  Widget _buildNotice() {
    return ListView(
      // shrinkWrap: true, // 스크롤이 안되고, 사이즈가 있는 Column 처럼 동작.
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: List.generate(
          10,
          (index) => ListTile(
                leading: Icon(Icons.notifications),
                trailing: Icon(Icons.notifications_outlined),
                title: Text('공지 $index'),
              )),
    );
  }
}
