import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/compotations/my_app_bar.dart';
import 'package:news_app/compotations/my_image.dart';

class NewsDescriptions extends StatefulWidget {
  const NewsDescriptions({super.key});

  @override
  State<NewsDescriptions> createState() => _NewsDescriptionsState();
}

class _NewsDescriptionsState extends State<NewsDescriptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage("assets/nature.png"),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              "Monarch population soars 4,900 persent since last year in thrilling 2021 western migration",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
