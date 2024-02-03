import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/compotations/my_image.dart';

class PosterChart extends StatelessWidget {
  const PosterChart({
    super.key,
    required this.title,
    required this.poster,
  });

  final String title;
  final String poster;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const MyImages(borderBottom: 0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(Icons.menu)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              poster,
              maxLines: 3,
              style: const TextStyle(fontSize: 12),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.favorite, color: Colors.blue),
                Icon(CupertinoIcons.chat_bubble, color: Colors.blue),
                Icon(CupertinoIcons.share, color: Colors.blue),
                Spacer(),
                Text("96 Comments 4.5k Views")
              ],
            ),
          )
        ],
      ),
    );
  }
}
