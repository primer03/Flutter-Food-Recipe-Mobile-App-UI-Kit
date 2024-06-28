import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class nutritionalItem extends StatelessWidget {
  const nutritionalItem({
    Key? key,
    required this.icon,
    required this.value,
  }) : super(key: key);

  final IconData icon;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            color: const Color(0xFFE6EBF2),
            borderRadius: BorderRadius.circular(15),
          ),
          child: FaIcon(
            icon,
            size: 20,
            color: Color(0xFF0A2533),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            value,
            style: GoogleFonts.mitr(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
