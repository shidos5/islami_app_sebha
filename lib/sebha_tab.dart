import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;
  int index = 0;
  double turn = 0;
  List<String> azkahr = [
    "الله أكبر",
    "لا اله الا الله",
    "الحمد لله",
    "سبحان الله"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage('assets/main_background.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.center,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 200, top: 105),
                    child: Image.asset('assets/head_of_seb7a.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 130),
                    child: AnimatedRotation(
                      duration: const Duration(milliseconds: 300 ),
                      turns: turn,
                      child: Image.asset('assets/body_of_seb7a.png')),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const Text(
                  "عدد التسبيحات",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 68.5,
                    height: 78.5,
                    decoration: BoxDecoration(
                        color: const Color(
                          0xFFB7935F,
                        ),
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                        child: Text(
                      count.toString(),
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(
                        0xFFB7935F,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        count++;
                        turn += .02;
                        if (count == 34) {
                          count = 0;
                          index++;
                          if (index == azkahr.length) {
                            index = 0;
                          }
                        }
                      });
                    },
                    child: Text(
                      azkahr[index],
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
