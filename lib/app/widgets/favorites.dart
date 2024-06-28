import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class favoritesItem extends StatelessWidget {
  const favoritesItem({
    Key? key,
    required this.title,
    required this.author,
    required this.image,
  });

  final String title;
  final String image;
  final Map<String, dynamic> author;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: const Color(0xFFFFFFFF),
      shadowColor: const Color(0xFF042628),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(
          color: Color(0xFFFBFBFB),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: const Color(0xFF70B9BE).withOpacity(0.1),
          splashFactory: InkRipple.splashFactory,
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: CachedNetworkImage(
                          imageUrl: image,
                          placeholder: (context, url) => Center(
                            child: LoadingAnimationWidget.threeRotatingDots(
                              color: const Color(0xFF70B9BE),
                              size: 40,
                            ),
                          ),
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 110,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: const Size(30, 30),
                          padding: const EdgeInsets.all(0),
                        ),
                        child: const Icon(
                          Icons.favorite,
                          color: Color(0xFF70B9BE),
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.mitr(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFF70B9BE),
                          width: 2,
                        ),
                      ),
                      child: ClipOval(
                        child: CachedNetworkImage(
                          imageUrl: author['image'],
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        author['name'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.mitr(
                          fontSize: 15,
                          color: const Color(0xFF97A2B0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
