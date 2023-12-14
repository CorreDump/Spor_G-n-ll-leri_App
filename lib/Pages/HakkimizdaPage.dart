import 'package:flutter/material.dart';
import 'My_Appbar.dart';
import 'My_bottombar.dart';
import 'NavBar.dart';
import 'package:url_launcher/url_launcher.dart';

class HakkimizdaPage extends StatelessWidget {
  final Uri _url = Uri.parse('https://www.instagram.com/sporgonulluleri/');
  _launchurl() async {
    if (await launchUrl(_url)) {
      print("can not open");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const My_Appbar(),
      drawer: NavBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Vizyon ve Misyon',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),

            Text(
              'Vizyonumuz, Dünya’da Spor Gönüllüleri ile öne çıkan ülkenin Türkiye olmasını sağlamak istiyoruz.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Misyonumuz, Türkiye genelindeki tüm spor severlerin birbirleriyle iletişim kuracakları ve gönüllülük deneyimi kazanacakları bir ortam yaratarak, sporun birleştirici ve bütünleştirici gücü ile spor kültürünü yaymak. Lise ve Üniversitesi öğrencilerinin mesleki ve kariyer yolculuklarında gönüllülük ile tanışmalarını sağlamak.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Manifestomuz',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Spor Gönüllüleri büyük bir takımdır. Amatör ruh ile profesyonel tavır sergiler. On binlerce üyesi ile ülke sporuna hizmet eder.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Spor Gönüllüleri dosttur. Yaptığı işi seven ve gurur duyan gönüllü arkadaşların bir araya gelmesi ile başarılı olur.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Spor Gönüllüleri liderdir. Türkiye’de ve Dünya’da spor kültürünü benimseterek, birçok branşa ilgiyi arttırmayı hedefler.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Spor Gönüllüleri eğitime önem verir. Eğitim programları düzenleyerek gönüllü katılımcıların mesleki ve kariyer yolculuklarına destek olur.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Spor Gönüllüleri, gönüllü yöneticiler ve liderler tarafından yönetilir. Gönüllülük kültürünü bilen, eğitim ve donanımlı ekip liderleri ile organizasyonlara katkı sağlar.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Spor Gönüllüleri organizasyonların gizli kahramanlarıdır. Organizasyon sürecine hakimdir. Bu süreçte organizasyonun en iyi şekilde yapılması...',
              style: TextStyle(fontSize: 16),
            ),
            // Sosyal Medya Butonları
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _launchurl,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Container(
                    width: 30,
                    height: 30,
                    child: Center(
                      child: Image.asset(
                        './images/instagram.jpg', // Instagram logo asset path
                        width:
                            30, // Set the width and height to the same value for a square shape
                        height:
                            30, // Set the width and height to the same value for a square shape
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const My_bottom_bar(),
    );
  }
}

/* class SocialMediaButton extends StatelessWidget {
  final String imageAsset;
  final VoidCallback onPressed;

  const SocialMediaButton({
    required this.imageAsset,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(imageAsset),
      onPressed: onPressed,
      iconSize: 50,
    );
  }
} */
