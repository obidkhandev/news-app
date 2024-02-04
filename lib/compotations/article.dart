import 'package:flutter/material.dart';

class Article extends StatelessWidget {
  const Article({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.all(12),
      child: Text(
        """
San Pedro is a composite volcano in northern Chile and one of the tallest active volcanoes in the world. It is part of the Andean Volcanic Belt and, like other Andean volcanoes, was formed by the subduction of the Nazca Plate beneath the South America Plate. San Pedro is formed of two separate edifices, the Old Cone and the Young Cone, and is adjoined to a neighbouring volcano, San Pablo. The Old Cone was active over one hundred thousand years ago and was eventually truncated by a giant landslide that removed its northwestern side. Within the landslide scar lava flows and pyroclastic flows constructed the Young Cone as well as the lateral centre La Poruña. Some eruptions have been reported during historical time, and presently the volcano is fumarolically active. This photograph shows San Pedro in the foreground, with San Pablo visible behind it to the right.
""",
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

