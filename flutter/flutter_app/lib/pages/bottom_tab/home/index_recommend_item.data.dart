import 'package:flutter/material.dart';

class IndexRecommendItem {
  final String title;
  final String subTitle;
  final String imageUrl;
  final String navigateUrl;
  const IndexRecommendItem(
      this.title, this.subTitle, this.imageUrl, this.navigateUrl);
}

const List<IndexRecommendItem> indexRecommendItemList = [
  IndexRecommendItem('家住回龙1', '归属的感觉', 'images/jiajia.jpg', 'login'),
  IndexRecommendItem('家住回龙2', '归属的感觉', 'images/jiajia.jpg', 'login'),
  IndexRecommendItem('家住回龙3', '归属的感觉', 'images/jiajia.jpg', 'login'),
  IndexRecommendItem('家住回龙4', '归属的感觉', 'images/jiajia.jpg', 'login'),
];
