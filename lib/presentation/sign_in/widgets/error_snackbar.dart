import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

class ErrorSnackbar extends StatelessWidget {
  final FlashController controller;
  final String message;

  const ErrorSnackbar({
    Key key,
    @required this.controller,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flash(
      controller: controller,
      horizontalDismissDirection: HorizontalDismissDirection.horizontal,
      backgroundColor: Colors.black87,
      child: FlashBar(
        message: Text(
          message,
          style: const TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        icon: Icon(
          Icons.warning,
          color: Colors.red[300],
        ),
        leftBarIndicatorColor: Colors.red[300],
      ),
    );
  }
}
