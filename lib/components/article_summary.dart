import 'package:flutter/material.dart';
import 'package:market_news/constants.dart';

class ArticleSummary extends StatelessWidget {
  final String imageUrl;
  final String heading;
  final String tagName;
  final String publishedTime;
  final String readTime;
  final int numberOfComments;

  ArticleSummary(
      {this.imageUrl,
      this.heading,
      this.tagName,
      this.publishedTime,
      this.readTime,
      this.numberOfComments});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Image.asset(imageUrl),
              ),
              this.tagName == null
                  ? SizedBox()
                  : Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(10)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(tagName),
                      ),
                    )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10),
            child: Text(
              heading,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    '17 hours ago.',
                    style: kArticleMetaInfoTextStyle,
                  ),
                  DotSeparator(),
                  Text(
                    '7 min read.',
                    style: kArticleMetaInfoTextStyle,
                  ),
                  DotSeparator(),
                  Text(
                    '$numberOfComments Comments.',
                    style: kArticleMetaInfoTextStyle,
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.share),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.copy),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class DotSeparator extends StatelessWidget {
  final Color color;

  DotSeparator({this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 5,
        height: 5,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: color ?? Colors.grey),
      ),
    );
  }
}
