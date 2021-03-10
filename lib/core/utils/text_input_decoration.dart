import 'package:flutter/material.dart';

import 'color.dart';

InputDecoration textFieldDecoration({context, prefixIcon, suffixIcon}) {
  return InputDecoration(
    contentPadding: EdgeInsets.all(8.0),
    border: InputBorder.none,
    focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    prefixIcon: prefixIcon != null
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 32,
              height: 32,
              child: CircleAvatar(
                backgroundColor: ColorSchema.green,
                child: Icon(
                  prefixIcon,
                  color: Colors.white,
                ),
              ),
            ),
          )
        : null,
    suffixIcon: suffixIcon != null
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              suffixIcon,
            ],
          )
        : null,
  );
}
