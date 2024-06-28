import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class popularItem extends StatelessWidget {
  const popularItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Card(
        shadowColor: const Color(0xFF70B9BE),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/food2.jpg',
                      width: 200,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 2,
                    right: 2,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        minimumSize: const Size(30, 30),
                        padding: const EdgeInsets.all(0),
                      ),
                      child: const Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                'Asian white noodle with extra seafood',
                style: GoogleFonts.mitr(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.fire,
                    size: 15,
                    color: Color(0xFF97A2B0),
                  ),
                  Text(
                    '250 cal',
                    style: TextStyle(
                      color: Color(0xFF97A2B0),
                    ),
                  ),
                  Icon(
                    Icons.circle,
                    size: 5,
                    color: Color(0xFF97A2B0),
                  ),
                  FaIcon(
                    FontAwesomeIcons.clock,
                    size: 15,
                    color: Color(0xFF97A2B0),
                  ),
                  Text(
                    '30 mins',
                    style: TextStyle(
                      color: Color(0xFF97A2B0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
