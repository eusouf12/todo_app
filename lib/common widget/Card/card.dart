import 'package:flutter/material.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';

class CustomCard extends StatefulWidget {
  final String title;
  final String subtitle;

  const CustomCard({
    super.key,
    required this.title,
    required this.subtitle,
    });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 141,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: const DecorationImage(
            image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNbkECXtEG_6-RV7CSNgNoYUGZE-JCliYm9g&s',
            ),
            fit: BoxFit.cover,
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNbkECXtEG_6-RV7CSNgNoYUGZE-JCliYm9g&s',
                width: 26,
                height: 26,
                fit: BoxFit.cover,
              ),
              ),
              CustomText(
              text: widget.title,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.start,
              color: const Color(0xFF111827),
              top: 10,
              bottom: 0,
              ),
              CustomText(
              text:widget.subtitle,
              textAlign: TextAlign.start,
              fontSize: 12,
              top: 10,
              bottom: 0,
              ),
            ],
            ),
          ),
        ),

    );
  }
}
