import 'package:flutter/material.dart';
import 'package:workscreen/core/configs/assets/app_images.dart';
import 'package:workscreen/core/theme/appcolors.dart';
import 'package:workscreen/features/screens/home/widgets/button.dart';
import 'package:workscreen/features/screens/home/widgets/onecontainer.dart';
import 'package:workscreen/features/screens/home/widgets/twocontainer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: Icon(
          Icons.navigate_before_rounded,
          color: Colors.white.withOpacity(0.4),
          size: 40,
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              AppImages.left,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              AppImages.right,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  'Выберите подписку',
                  style: TextStyle(
                    shadows: [
                      Shadow(
                        color: Colors.white.withOpacity(0.8),
                        blurRadius: 12,
                      ),
                    ],
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 64,
                ),
                twoContainer(),
                SizedBox(
                  height: 25,
                ),
                oneContainer(),
                SizedBox(
                  height: 21,
                ),
                buttonApp(),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "terms of use",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.3),
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "policy privacy",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.3),
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                          color: AppColors.purple.withOpacity(0.1)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 17, vertical: 10),
                        child: Text(
                          "Restore purchase",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white.withOpacity(0.3),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
