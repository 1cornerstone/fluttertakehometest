import 'package:flutter/material.dart';

import '../../utils/color.dart';


class FreshFlowButton extends ElevatedButton {
  final bool isLoading;
  final String text;
  final VoidCallback onButtonPressed;

  FreshFlowButton(
      {Key? key,
      required this.isLoading,
      required this.text,
      required this.onButtonPressed})
      : super(
          key: key,
          child: !isLoading
              ? Text(
                  text,
            style:const TextStyle(
              fontWeight: FontWeight.w700
            ),)
              : const CircularProgressIndicator.adaptive(
                  backgroundColor: AppColor.accent,
                  valueColor: AlwaysStoppedAnimation<Color>(AppColor.primary)),
          onPressed: !isLoading ? onButtonPressed : null,
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 30)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              )),
              backgroundColor:
                  MaterialStateProperty.all<Color>(AppColor.primary)),
        );
}
