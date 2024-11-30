import 'package:flutter/material.dart';
import 'package:workscreen/core/theme/appcolors.dart';

Widget oneContainer() {
  return Container(
    width: 321,
    height: 272,
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.37),
      borderRadius: BorderRadius.circular(29),
      border: Border(
        top: BorderSide(
          color: Colors.white,
          width: 0.5,
        ),
        right: BorderSide(
          color: Colors.white,
          width: 1,
        ),
        bottom: BorderSide(
          color: Colors.white,
          width: 0.5,
        ),
        left: BorderSide.none,
      ),
    ),
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -17,
          right: -10,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'выгодно',
              style: TextStyle(
                color: AppColors.purple,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF6B66D8),
                          Color(0xFFBABAD7),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "6 месяц",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Описание",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "10 000р",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "12000р",
                        style: TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Colors.white.withOpacity(0.46),
                          decorationThickness: 1.7,
                          color: Colors.white.withOpacity(0.46),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 42),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  4,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 14.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.circle,
                          size: 6,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "что входит",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
