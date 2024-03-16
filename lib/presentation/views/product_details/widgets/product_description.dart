import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({super.key, required this.description});

  final String description;

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  bool isExpanded =true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).cardColor),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Description',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18
                ),
              ),
              const Spacer(),
              IconButton(onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              }, icon: RotatedBox(quarterTurns : isExpanded ? 2: 0 ,child: const Icon(Icons.keyboard_arrow_down)))
            ],
          ),
          SizedBox(
              height: isExpanded ? null : 0,child: Text(widget.description))
        ],
      ),
    );
  }
}
