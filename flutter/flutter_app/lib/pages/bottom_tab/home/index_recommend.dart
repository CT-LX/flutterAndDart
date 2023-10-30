import 'package:flutter/material.dart';

import 'index_recommend_item.data.dart';
import 'index_recommend_item_widget.dart';

class IndexRecommend extends StatelessWidget {
  late List<IndexRecommendItem> dataList; // 初始数据 数据格式
  // 默认值 需要是一个常量
  IndexRecommend({super.key, this.dataList = indexRecommendItemList});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0x08000000)),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('房屋推荐'),
              InkWell(
                child: Text('更多'),
              )
            ],
          ),
          Padding(padding: EdgeInsets.all(5)),
          Wrap(
            spacing: 10, // item 之间的间距
            runSpacing: 10, // 行 之间的间距
            children: dataList
                .map((item) => Container(
                      width: (MediaQuery.of(context).size.width - 10 * 3) / 2,
                      height: 100,
                      // decoration: const BoxDecoration(color: Colors.red),
                      child: IndexRecommendItemWidget(item),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
