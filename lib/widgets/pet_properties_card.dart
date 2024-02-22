import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PetPropertiesCard extends StatelessWidget {
  const PetPropertiesCard({
    super.key,
    required this.property,
    required this.propertyValue,
  });

  final String property;
  final String propertyValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 80,
      decoration: BoxDecoration(
          color: Color.fromARGB(29, 152, 255, 152),
          borderRadius: BorderRadius.circular(18)),
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                property,
                style:
                    GoogleFonts.poppins(color: Color(0xFF5F5F63), fontSize: 16),
              ),
              Text(
                propertyValue,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Theme.of(context).highlightColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
