import 'package:flutter/material.dart';

const contentPadding = EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0);

const kSendButtonTextStyle = Icon(
  Icons.send,
  size: 20.0,
  color: Colors.white,
);

const kMessageTextFieldDecoration = OutlineInputBorder(
  borderSide: BorderSide(
    color: Colors.lightBlueAccent,
    width: 1.0,
  ),
  borderRadius: BorderRadius.all(Radius.circular(32.0)),
);

const kFocusedBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0))
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);
