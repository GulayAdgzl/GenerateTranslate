import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:generate_image/model/home_type.dart';
import 'package:lottie/lottie.dart';

import '../helper/global.dart';

class HomeCard extends StatelessWidget {
  final HomeType homeType;

  const HomeCard({super.key, required this.homeType});

  @override
  Widget build(BuildContext context) {
    Animate.restartOnHotReload = true;

    return Card(
      color: Colors.transparent, // Tamamen şeffaf yapar
      elevation: 0, // Gölgeyi kaldırır
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        onTap: homeType.onTap,
        child: Center(
          child: Container(
            width: mq.width * .6,
            padding: homeType.padding,
            child: Lottie.asset('assets/lottie/${homeType.lottie}'),
          ),
        ),
      ),
    ).animate().fade(duration: 1.seconds, curve: Curves.easeIn);
  }
}
