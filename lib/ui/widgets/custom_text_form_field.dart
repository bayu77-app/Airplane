import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obsecureText;

  const CustomTextFormField({super.key,
  required this.title, 
  required this.hintText,
  this.obsecureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return 
       Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: KBlackColor,
                obscureText: obsecureText,
                decoration: InputDecoration(
                  hintText: hintText,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                      DefaultRadius,
                    ))),
              ),
            ],
          ),
        );
  }
}
