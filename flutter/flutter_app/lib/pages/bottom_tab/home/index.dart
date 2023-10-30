import 'package:flutter/material.dart';

import '../../../widgets/common_swiper.dart';
import 'index_navigator.dart';
import 'index_recommend.dart';
import 'info/index.dart';

class WorkPlatPage extends StatelessWidget {
  const WorkPlatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Text('1'),
            // CommonSwipper(),
            // IndexNavigator(),
            // IndexRecommend(),
            // Info(),
          ],
        ),
      ),
    );
  }
}
