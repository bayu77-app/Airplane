import 'package:airplane/ui/widgets/custom.button.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
             image: AssetImage('assets/image_get_started.png'),
              fit: BoxFit.cover,
            )),
          ),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Fly Like a Bird',
                style: WhiteTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Explore new world with us and let yourself get an amazing experiences',
                style: WhiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
                textAlign: TextAlign.center,
              ),
              CustomButton(
                  title: 'Get Started',
                  width: 220,
                  margin: EdgeInsets.only(
                    top: 50,
                    bottom: 80,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/sign-up',
                      
                    );
                  })
            ],
          ))
        ],
      ),
    );
  }
}
