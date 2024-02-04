import 'package:flutter/material.dart';
import 'package:news_app/compotations/my_app_bar.dart';
// import 'package:news_app/compotations/my_image.dart';

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
          const Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/profile.png"),
                ),
                SizedBox(width: 10),
                Text(
                  "By Andy Corbley",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Spacer(),
                Text(
                  "1hr ago",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RowIconsAndText(
                  icon: Icons.chat_bubble_outline,
                  text: "8 commets",
                ),
                RowIconsAndText(
                  icon: Icons.favorite_border,
                  text: "34 likes",
                ),
                RowIconsAndText(
                  icon: Icons.share,
                  text: "Share",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              """
San Pedro is a composite volcano in northern Chile and one of the tallest active volcanoes in the world. It is part of the Andean Volcanic Belt and, like other Andean volcanoes, was formed by the subduction of the Nazca Plate beneath the South America Plate. San Pedro is formed of two separate edifices, the Old Cone and the Young Cone, and is adjoined to a neighbouring volcano, San Pablo. The Old Cone was active over one hundred thousand years ago and was eventually truncated by a giant landslide that removed its northwestern side. Within the landslide scar lava flows and pyroclastic flows constructed the Young Cone as well as the lateral centre La Poruña. Some eruptions have been reported during historical time, and presently the volcano is fumarolically active. This photograph shows San Pedro in the foreground, with San Pablo visible behind it to the right.
""",
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}

class RowIconsAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  const RowIconsAndText({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
