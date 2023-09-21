import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormLabel extends StatelessWidget {
// used form label to use it for first name, last name email ..
  String label;
  FormLabel({required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(label,
    style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
