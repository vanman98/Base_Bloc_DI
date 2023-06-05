import 'package:_imagineeringwithus_pack/_imagineeringwithus_pack.dart';
import 'package:flutter/material.dart';
// import 'dart:html' as html;

// setFriendlyRouteName({required String title, required String url}) {
//   html.document.title = title;
//   html.window.history.pushState(null, title, url);
// }

showSnackBar({context, required msg, Duration? duration}) {
  ScaffoldMessenger.of(context ).showSnackBar(
    SnackBar(
      content: Text(
        msg,
        style: w300TextStyle(color: appColorBackground),
      ),
      duration: duration ?? const Duration(seconds: 1),
      backgroundColor: appColorText,
    ),
  );
}

bool isImageByMime(type) {
  switch (type) {
    case 'image/jpeg':
    case 'image/png':
      return true;
    default:
      return false;
  }
}
