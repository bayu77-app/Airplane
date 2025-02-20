import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomCommingsoon extends StatelessWidget {
  const CustomCommingsoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_rocket.png'))),
          ),
          SizedBox(
            height: 28,
          ),
          Text(
            'Coming Soon',
            style: BlackTextStyle.copyWith(
              fontSize: 36,
              fontWeight: bold,
            ),
          ),
          SizedBox(
            height: 28,
          ),
          Text(
            textAlign: TextAlign.center,
            'Are you Ready to get something new from us. \nWait for the next update',
          ),
        ],
      ),
    );
  }
}