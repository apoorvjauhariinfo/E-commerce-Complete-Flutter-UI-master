import 'package:flutter/material.dart';

class TrendingBanner extends StatelessWidget {
  const TrendingBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
    
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 0,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF52D55), // Updated background color to pink
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              style: TextStyle(color: Colors.white), // Updated text color to white
              children: [
                TextSpan(
                  text: "Trending Products\n",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: "Last Date 29/02/22\n"),
                
              ],
            ),
          ),
          SizedBox(height: 16),
          // Removed ElevatedButton widget
        ],
      ),
    );
  }
}