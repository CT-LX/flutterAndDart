import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

// 图片的宽度 100 * 40
const List<String> defaultImages = [
  'https://ke-image.ljcdn.com/newhouse-user-image/643451c94d40d324d4e1140a77e37090.jpg!m_fill,w_1000,l_fbk',
  'https://ke-image.ljcdn.com/newhouse-user-image/556292b74ccaef1af8f18159cb9265a4.jpg!m_fill,w_1000,l_fbk',
  'https://ke-image.ljcdn.com/newhouse-user-image/318cbe724afe0ea034f6b0cb4ba7b889.jpg!m_fill,w_1000,l_fbk',
  'https://ke-image.ljcdn.com/newhouse-user-image/ffca72b7809ccd9a3dd7ef088ada21e5.png!m_fill,w_1000,l_fbk',
];

class CommonSwipper extends StatelessWidget {
  final List<String> images;

  const CommonSwipper({super.key, this.images = defaultImages});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.width / 40 * 100;
    // 图片多屏幕适配：高度：屏幕宽度/图片的宽度 * 图片的高度
    return Container(
      height: 567 / 2,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            images[index],
            fit: BoxFit.fill,
          );
        },
        indicatorLayout: PageIndicatorLayout.SCALE,
        // autoplay: true,
        autoplayDelay: 3000,
        itemCount: images.length,
        pagination: const SwiperPagination(),
        // control: const SwiperControl(),
        fade: 1.0,
        viewportFraction: 0.85,
      ),
    );
  }
}
