import 'package:flutter/material.dart';

import 'index_recommend_item.data.dart';

class IndexRecommendItemWidget extends StatelessWidget {
  IndexRecommendItem dataListItem;

  IndexRecommendItemWidget(this.dataListItem, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(dataListItem.navigateUrl);
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        width: (MediaQuery.of(context).size.width - 10 * 3) / 2,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(dataListItem.title),
                Text(dataListItem.subTitle),
              ],
            ),
            Container(
              width: 55,
              height: 55,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Image.asset(
                dataListItem.imageUrl,
                width: 55,
                height: 55,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
