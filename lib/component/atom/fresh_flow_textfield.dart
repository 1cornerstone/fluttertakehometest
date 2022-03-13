



import 'package:flutter/material.dart';

import '../../utils/color.dart';

class FreshFlowTextField extends TextFormField{
  final String hintText;
  final bool obscureText;
  final TextEditingController? flowController;
  final FormFieldValidator? flowValidator;

  FreshFlowTextField( {Key? key,required this.hintText,this.obscureText= false,this.flowController, this.flowValidator,}): super(
    key: key,
    obscureText: obscureText,
    validator:flowValidator ,
    controller: flowController,
    maxLines: 1,
    decoration: InputDecoration(
      hintText: hintText,
      contentPadding: const EdgeInsets.all(8.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide:BorderSide(
          color: AppColor.primary.withOpacity(0.4)
      )
      ),
      focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(
              color: AppColor.primary
          )
      ),
      //enabledBorder:
    )
  );

}