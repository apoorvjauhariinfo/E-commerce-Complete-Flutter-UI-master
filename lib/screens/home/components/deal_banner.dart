import 'package:flutter/material.dart';

class DealBanner extends StatelessWidget {
  const DealBanner({
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
        color: const Color(0xFFADD8E6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              style: TextStyle(color: Colors.white),
              children: [
                TextSpan(
                  text: "Deal of the Day\n",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: "22h 55m 20s remaining\n"),
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: MediaQuery.of(context).size.width / 2, // Half the width of the screen
            margin: const EdgeInsets.only(bottom: 8), // Bottom margin of 8
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: const Color(0xFFADD8E6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                side: BorderSide(color: Colors.white),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "View all",
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(Icons.arrow_right, color: const Color(0xFFADD8E6)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}