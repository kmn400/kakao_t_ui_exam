import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/data/fake_data.dart';
import 'package:kakao_t_ui_exam/ui/kakao_t/component/ad_widget.dart';
import 'package:kakao_t_ui_exam/ui/kakao_t/detail_screen.dart';

import 'component/menu_widget.dart';

class kakaoTScreen extends StatefulWidget {
  const kakaoTScreen({Key? key}) : super(key: key);

  @override
  State<kakaoTScreen> createState() => _kakaoTScreenState();
}

class _kakaoTScreenState extends State<kakaoTScreen> {
  int _index = 0;

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
    return Stack(children: [
      CarouselSlider(
        options: CarouselOptions(
            height: 150,
            viewportFraction: 0.8,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayCurve: Curves.ease,
            onPageChanged: (index, _) {
              setState(() {
                _index = index;
              });
            }),
        items: fakeAds
            .map<Widget>((e) => AdWidget(
                  ad: e,
                ))
            .toList(),
      ),
      Expanded(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: fakeAds.asMap().entries.map((e) {
              return Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: e.key == _index ? Colors.black : Colors.grey,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    ]);
  }
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
