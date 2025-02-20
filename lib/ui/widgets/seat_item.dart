import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
//Note: 0. Available 1. Selected 2. Unavailable

  final int status;

  const SeatItem({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return KAvailableColor;
        case 1:
          return KPrimaryColor;
        case 2:
          return KUnavailableColor;
        default:
          return KUnavailableColor;
      }
    }

    bordercolor() {
      switch (status) {
        case 0:
          return KPrimaryColor;
        case 1:
          return KPrimaryColor;
        case 2:
          return KUnavailableColor;
        default:
          return KUnavailableColor;
      }
    }

    child() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: WhiteTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          );
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: bordercolor(),
          width: 2,
        ),
      ),
      child: child(),
    );
  }
}
