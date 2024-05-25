import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:version2/Screens/amazon.dart';
import 'package:version2/Screens/classroom.dart';
import 'package:version2/Screens/flipkart.dart';
import 'package:version2/Screens/googlephotos.dart';
import 'package:version2/Screens/instagram.dart';
import 'package:version2/Screens/linkedin.dart';
import 'package:version2/Screens/meesho.dart';
import 'package:version2/Screens/notes.dart';
import 'package:version2/Screens/whatsapp.dart';
import 'package:version2/Screens/youtube.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List of image paths
    final List<Map<String, dynamic>> gridItems = [
      {
        'imagePath':
            'https://images.macrumors.com/t/oVY3CeutZiDKCY3YZHL7LEoRf54=/1600x0/article-new/2021/09/General-YouTube-Feature-1.jpg',
        'screen': const Youtube(),
      },
      {
        'imagePath':
            'https://store-images.s-microsoft.com/image/apps.8985.13655054093851568.1c669dab-3716-40f6-9b59-de7483397c3a.8b1af40f-2a98-4a00-98cd-94e485a04427?h=464',
        'screen': const Whatsapp(),
      },
      {
        'imagePath':
            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/800px-Instagram_logo_2022.svg.png',
        'screen': const Instagram(),
      },
      {
        'imagePath':
            'https://play-lh.googleusercontent.com/kMofEFLjobZy_bCuaiDogzBcUT-dz3BBbOrIEjJ-hqOabjK8ieuevGe6wlTD15QzOqw=w240-h480-rw',
        'screen': const Linkedin(),
      },
      {
        'imagePath':
            'https://usercontent.one/wp/www.phoneweek.co.uk/wp-content/uploads/2022/06/How-to-Download-Photos-From-Google-Photos.png',
        'screen': const GooglePhotos(),
      },
      {
        'imagePath':
            'https://images.crunchbase.com/image/upload/c_pad,h_256,w_256,f_auto,q_auto:eco,dpr_1/ubfkhglbpxf9ruftuhyz',
        'screen': const Flipkart(),
      },
      {
        'imagePath':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6WlJ1cEvxbcXuRs3g5a8tybvlCqJb5x3Smg&s',
        'screen': const Amazon(),
      },
      {
        'imagePath':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHq4L47HNW01Dlb1ED80Hwmb2xzMSfqCsP6VoE-lXYNg&s',
        'screen': const Meesho(),
      },
      {
        'imagePath':
            'https://marvel-b1-cdn.bc0a.com/f00000000258271/www.studiesweekly.com/wp-content/uploads/2021/05/Google-Classroom-1050x525.jpg',
        'screen': const GoogleClassroom(),
      },
      {
        'imagePath':
            'https://play-lh.googleusercontent.com/vSNQds6F5roxdN4-a16JnQ9dWQVSZZ8OH4-iMAcNLaFQd3ItZWU8rOPOql4Ew5Hh1esX',
        'screen': const Notes(),
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 25, 25),
        title: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              "Welcome, AdTG",
              textStyle: GoogleFonts.orbitron(
                  textStyle:
                      const TextStyle(fontSize: 22, color: Colors.white)),
              speed: const Duration(milliseconds: 150),
            ),
          ],
          totalRepeatCount: 4,
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 43, 43, 43),
        child: GridView.builder(
          itemCount: gridItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            final item = gridItems[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomGridTile(
                imagePath: item['imagePath'],
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return item['screen'];
                  }));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class CustomGridTile extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  const CustomGridTile({
    super.key,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: GridTile(
            child: Image.network(imagePath, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
