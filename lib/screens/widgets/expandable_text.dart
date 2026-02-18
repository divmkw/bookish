import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({super.key, required this.text});

  @override
  State<ExpandableText> createState() =>
      _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          maxLines: expanded ? null : 3,
          overflow: expanded
              ? TextOverflow.visible
              : TextOverflow.ellipsis,
          style: const TextStyle(color: Colors.grey),
        ),
        TextButton(
          onPressed: () =>
              setState(() => expanded = !expanded),
          child: Text(expanded ? "Read less" : "Read more"),
        )
      ],
    );
  }
}
