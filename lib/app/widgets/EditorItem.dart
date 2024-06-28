import 'package:flutter/material.dart';
import 'package:foodrecipe/app/modules/detail/controllers/detail_controller.dart';
import 'package:foodrecipe/app/modules/detail/views/detail_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EditorItem extends StatelessWidget {
  const EditorItem({
    Key? key,
    required this.title,
    required this.author,
    required this.image,
  }) : super(key: key);
  final String title;
  final Map<String, dynamic> author;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 10),
      color: Color(0xFFFFFFFF),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/$image',
                height: 100,
                width: 120,
                fit: BoxFit.cover,
                cacheHeight: 100,
                cacheWidth: 120,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.mitr(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: const Color(0xFF70B9BE),
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: const Color(0xFF70B9BE),
                            width: 2,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            '${author['image']}',
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        author['name'],
                        style: GoogleFonts.mitr(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.to<dynamic>(
                          () => DetailView(),
                          transition: Transition.downToUp,
                        );
                        Get.put(DetailController());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF042628),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(0),
                        minimumSize: const Size(35, 35),
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 20,
                      ),
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
