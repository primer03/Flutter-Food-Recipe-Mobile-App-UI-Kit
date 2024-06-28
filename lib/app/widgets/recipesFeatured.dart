import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class recipesFeatured extends StatelessWidget {
  const recipesFeatured({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Container(
              height: 190,
              width: MediaQuery.of(context).size.width * 0.7,
              color: const Color(0xFF70B9BE),
            ),
            Positioned(
              top: -30,
              right: -30,
              child: Image.asset(
                'assets/images/food1.png',
                height: 170,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  bottom: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Asian white noodle\nwith extra seafood',
                      style: GoogleFonts.mitr(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFFFFFFFF),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color: const Color(0xFFFFFFFF),
                              width: 2,
                            ),
                          ),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://xsgames.co/randomusers/avatar.php?g=female',
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Alexia Primo',
                          style: GoogleFonts.mitr(
                            fontSize: 15,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                        const Spacer(),
                        //clock
                        const FaIcon(
                          FontAwesomeIcons.clock,
                          size: 15,
                          color: Color(0xFFFFFFFF),
                        ),
                        Text(
                          ' 30 mins',
                          style: GoogleFonts.mitr(
                            fontSize: 15,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
