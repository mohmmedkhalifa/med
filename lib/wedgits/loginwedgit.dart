import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

// ignore: must_be_immutable
class Loginwedgit extends StatelessWidget {
  @override
  Function validate;
  Function save;
  String label;
  Widget icon;
  Loginwedgit(
      {@required this.validate, @required this.save, @required this.label ,this.icon});
  @override
  Widget build(BuildContext context) {
    return TextFormField(

      validator: (newvalue) => validate(newvalue),
      onSaved: (newValue) => save(newValue),
      decoration: InputDecoration(
        prefixIcon:icon,
          labelText: translator.translate(label),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );
  }
}
