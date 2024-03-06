import 'package:coffee_shop/home.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage('assets/images/bgLanding.png'),
              fit: BoxFit.contain,
              alignment: Alignment.topCenter),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 550,
            ),
            Container(
              width: 315,
              child: const Text(
                'Coffee so good, your taste buds will love it.',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'sora',
                    fontSize: 34,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 315,
              child: const Text(
                'The best grain, the finest roast, the powerful flavor.',
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'sora', fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(const Size(315, 62)),
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromRGBO(198, 124, 76, 1)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: const BorderSide(color: Colors.black, width: 2)),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const homePage()),
                );
              },
              child: const Text(
                'Get Started',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
