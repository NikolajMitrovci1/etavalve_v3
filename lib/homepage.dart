import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        top: true,
        child: HeroWidget(),
      ),
    );
  }
}

class HeroWidget extends StatefulWidget {
  const HeroWidget({
    super.key,
  });

  @override
  State<HeroWidget> createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  bool isHomeSelected = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Opacity(
                opacity: 0.8,
                child: Hero(
                  tag: 'hero1',
                  transitionOnUserGestures: true,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'hero1.png',
                      width: MediaQuery.of(context).size.width * 100,
                      height: MediaQuery.of(context).size.height * 1,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, 0.80),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(50, 50, 50, 0),
                  child: Container(
                    color: const Color(0xFFFFFFFC).withOpacity(0.8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 45),
                            child: Image.asset(
                              'logo1.png',
                              width: 145,
                              height: 25,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Gap(
                          430,
                        ),
                        Flexible(
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                isHomeSelected = true;
                              });
                            },
                            child: Text(
                              'HOME',
                              style: TextStyle(
                                color: isHomeSelected
                                    ? const Color(0xFFFF8B00)
                                    : const Color(0xFF333333),
                              ),
                            ),
                          ),
                        ),
                        const Gap(40),
                        Flexible(
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'TECHNOLOGY',
                              style: TextStyle(
                                color: Color(
                                  0xFF333333,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(40),
                        Flexible(
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'ABOUT US',
                              style: TextStyle(
                                color: Color(
                                  0xFF333333,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(40),
                        Flexible(
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'CONTACT',
                              style: TextStyle(
                                color: Color(
                                  0xFF333333,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // const Gap(29),
              const Padding(
                padding: EdgeInsets.only(top: 185, bottom: 85),
                child: UseTheHeatWidget(),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(0),
            color: const Color(0xFFFF8B00),
            width: MediaQuery.of(context).size.width * 100,
            height: MediaQuery.of(context).size.height * 0.2,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OrangeBannerTextWidget(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 145),
                child: Image.asset(
                  'image1.png',
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
              ),
              const Text(
                'We apply the Brayton process, known from gas turbines, to\nconvert heat into mechanical work. However, we implement\nthe process using a piston engine, as it offers significantly\nhigher efficiency in compression and expansion, even at low\nloads, leading to impressive heat-to-electricity conversion\nrates. This approach can only be realized with our patented\nfully variable valve actuators.',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class UseTheHeatWidget extends StatelessWidget {
  const UseTheHeatWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 755,
          height: 390,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 755,
                  height: 390,
                  decoration: ShapeDecoration(
                    color: Colors.black.withOpacity(0.3),
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(60)),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 155,
                top: 75,
                child: SizedBox(
                  width: 425,
                  height: 190,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 545,
                        child: Text(
                          'Use the heat!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 70,
                            // fontFamily: 'Centra No2',
                            fontWeight: FontWeight.w700,
                            // height: 0.02,
                          ),
                        ),
                      ),
                      // Gap(20),
                      Flexible(
                        // width: 415,
                        child: Text(
                          'Our solution redefines the landscape of waste heat utilization, offering a cost-effective, scalable, and versatile green energy solution.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            // fontFamily: 'Cabin',
                            fontWeight: FontWeight.w400,
                            // height: 0.07,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 155,
                top: 295,
                child: Container(
                  width: 545,
                  height: 50,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFF8B00),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Get in touch',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Cabin',
                                fontWeight: FontWeight.w400,
                                height: 0,
                                letterSpacing: 0.40,
                              ),
                            ),
                            const SizedBox(width: 40),
                            Container(
                              width: 24,
                              height: 24,
                              clipBehavior: Clip.antiAlias,
                              decoration:
                                  const BoxDecoration(), // Add your widget here
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 23),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Learn more',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Cabin',
                                fontWeight: FontWeight.w400,
                                height: 0,
                                letterSpacing: 0.40,
                              ),
                            ),
                            const SizedBox(width: 40),
                            Container(
                              width: 24,
                              height: 24,
                              clipBehavior: Clip.antiAlias,
                              decoration:
                                  const BoxDecoration(), // Add your widget here
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 2,
                top: 0,
                child: Container(
                  width: 6,
                  height: 391,
                  decoration: const BoxDecoration(
                    color: Color(
                      0xFFFF8B00,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OrangeBannerTextWidget extends StatelessWidget {
  const OrangeBannerTextWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text:
                'We offer an innovative engine that efficiently\ntransforms industrial waste ',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: Color(
                0xFFFFFFFF,
              ),
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'heat',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: ' between 500\n and 900 °C ',
              ),
              TextSpan(
                text: 'into electricity.',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
