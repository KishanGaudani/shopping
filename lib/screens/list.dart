import 'package:flutter/material.dart';

class list extends StatefulWidget {
  list(
      {Key? key,
        required this.title,
        required this.leading,
        required this.trailing,
        required this.subtitle})
      : super(key: key);

  Widget title = Text("");
  Widget leading = Text("");
  Widget trailing = Text("");
  Widget subtitle = Text("");

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ListTile(
          title: widget.title,
          leading: widget.leading,
          trailing: widget.trailing,
          subtitle: widget.subtitle,
        ));
  }
}
