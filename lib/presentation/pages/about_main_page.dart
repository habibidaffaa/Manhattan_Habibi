import 'package:flutter/material.dart';

import '../../common/app_theme.dart';
import '../../common/color.dart';

class AboutMainPage extends StatefulWidget {
  const AboutMainPage({super.key});

  @override
  State<AboutMainPage> createState() => _AboutMainPageState();
}

class _AboutMainPageState extends State<AboutMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
            // GestureDetector(
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            //   child: Image.asset(
            //     'assets/images/back.png',
            //     width: 30,
            //     height: 30,
            //   ),
            // ),
            Text(
              'Tentang',
              style: AppTheme.appTextTheme.regulerNoneMedium!
                  .copyWith(color: BaseColors.neutral950),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            child: Image.asset(
              'assets/images/Mask group.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tentang',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Inter',
                  color: BaseColors.neutral950,
                ),
              ),
              Text(
                'Varises Indonesia',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Inter',
                  color: BaseColors.neutral950,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Padding(
            //left, top, right, bottom
            padding: EdgeInsets.fromLTRB(20, 10, 10, 20),
            child: Column(
              children: [
                Text(
                  'Varises merupakan kondisi di mana terjadi pelebaran dan berkelok-keloknya pembuluh darah balik/vena. Penyakit ini paling sering menyerang tungkai bawah. Varises lebih sering menyerang jenis kelamin wanita dibandingkan dengan laki-laki dengan segala faktor resiko yang menyertai. Awalnya penyakit ini tidak bergejala, namun lama kelamaan akan muncul rasa nyeri.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                    color: Colors.black,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Varises merupakan kondisi di mana terjadi pelebaran dan berkelok-keloknya pembuluh darah balik/vena. Penyakit ini paling sering menyerang tungkai bawah. Varises lebih sering menyerang jenis kelamin wanita dibandingkan dengan laki-laki dengan segala faktor resiko yang menyertai. Awalnya penyakit ini tidak bergejala, namun lama kelamaan akan muncul rasa nyeri.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                    color: Colors.black,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/map.png',
                width: 400,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(color: BaseColors.primary500),
                  ),
                  
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Open Hour',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Inter',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                color: Colors.white,
                                size: 24,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Senin - Jumat',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Row(
                            children: [
                              Icon(
                                Icons.lock_clock_outlined,
                                color: Colors.white,
                                size: 24,
                              ),
                              SizedBox(width: 10),
                              Text(
                                '08.00 - 13.00',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
