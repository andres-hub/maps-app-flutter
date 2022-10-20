import 'package:flutter/material.dart';

class CustomSnackbar extends SnackBar {
  CustomSnackbar(
      {super.key,
      required String message,
      String btnLabel = 'Ok',
      Duration duration = const Duration(seconds: 2),
      VoidCallback? onOk})
      : super(
            content: Text(message),
            duration: duration,
            action: SnackBarAction(
              label: btnLabel,
              onPressed: () {
                if (onOk != null) onOk();
              },
            ));
}
