import 'package:airplane/ui/widgets/custom.button.dart';
import 'package:airplane/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
          margin: EdgeInsets.only(top: 30),
          child: Text(
            'Join us and get your next journey',
            style: BlackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
          ));
    }

//name input
    Widget inputSection() {
      Widget NameInput() {
        return CustomTextFormField(
          title: 'Full Name',
          hintText: 'Your full Name',
        );
      }

// email adress
      Widget emailInput() {
        return CustomTextFormField(
          title: 'Email Address',
          hintText: 'Your email Address',
        );
      }

// password
      Widget passwordInput() {
         return CustomTextFormField(
          title: 'Password',
          hintText: 'Your Password',
          obsecureText: true,
        );
      }

      // hobby
      Widget hobbyInput() {
        return CustomTextFormField(
          title: 'Hobyy',
          hintText: 'Your Hobby',
        );
      }

      Widget submitButton() {
        return CustomButton(
            title: 'Get Started',
            width: 220,
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/bonus-page',
              );
            });
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: KWhitecoloer,
          borderRadius: BorderRadius.circular(
            DefaultRadius,
          ),
        ),
        child: Column(
          children: [
            NameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 40,
          bottom: 73,
        ),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: CupertinoContextMenu.kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: DefaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
