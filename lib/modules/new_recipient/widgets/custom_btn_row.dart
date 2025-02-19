import 'package:flutter/material.dart';

class custombtnRow extends StatefulWidget {
  VoidCallback onTap;
  custombtnRow({required this.onTap, super.key});

  @override
  State<custombtnRow> createState() => _custombtnRowState();
}

class _custombtnRowState extends State<custombtnRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          // width: double.infinity,
          height: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white, width: 2)),
          child: InkWell(
            onTap: widget.onTap,
            child: Container(
              alignment: AlignmentDirectional.center,
              child: const Text('Bankgiro',
                  style: TextStyle(
                    fontSize: 16,
                  ) // fontWeight: FontWeight.bold),
                  ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          // width: double.infinity,
          height: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white, width: 2)),
          child: InkWell(
            onTap: widget.onTap,
            child: Container(
              alignment: AlignmentDirectional.center,
              child: const Text('Plusgiro',
                  style: TextStyle(
                    fontSize: 16,
                  ) // fontWeight: FontWeight.bold),
                  ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.amber),
          child: InkWell(
            onTap: widget.onTap,
            child: Container(
              alignment: AlignmentDirectional.center,
              child: const Text(
                'Bank account',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
