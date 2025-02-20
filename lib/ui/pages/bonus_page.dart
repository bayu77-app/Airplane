import 'package:airplane/ui/widgets/custom.button.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(
          DefaultMargin,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images_card.png'),
            ),
            boxShadow: [
              BoxShadow(
                color: KPrimaryColor.withOpacity(0.5),
                blurRadius: 50,
                offset: Offset(0, 10),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: WhiteTextStyle.copyWith(
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          'Kezia Anne',
                          style: WhiteTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: medium,
                          ),
                        ),
                      ]),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_plane.png'),
                    ),
                  ),
                ),
                Text(
                  'Pay',
                  style: WhiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 41,
            ),
            Text(
              'Balance',
              style: WhiteTextStyle.copyWith(
                fontWeight: light,
              ),
            ),
            Text('IDR 280.000.000',
            style: WhiteTextStyle.copyWith(
              fontSize: 26,
              fontWeight: medium,
            ),
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Text(
          'Big Bonus 🎉',
          style: BlackTextStyle.copyWith(
            fontSize: 32,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          'We give you early credit so that you can buy a flight ticket',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget startButton() {
    return CustomButton(title: 'Start Fly Now',
    width: 200,
    margin: EdgeInsets.only(
      top: 50,
      bottom: 46,
    ),
    
     onPressed: (){
    
      Navigator.pushNamed(context, '/main');
     },);
    }

    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              bonusCard(),
              title(),
              subtitle(),
              startButton(),
            ],
          ),
        ),
      ),
    );
  }
}
