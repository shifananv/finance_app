import 'package:flutter/material.dart';

class CoinCard extends StatelessWidget {
  const CoinCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 80,
      decoration: ShapeDecoration(
        color: const Color(0xFF252530),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 14,
          ),
          Image.asset('assets/images/Logo.png'),
          SizedBox(
            width: 10,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 26,
              ),
              Row(
                children: [
                  Text(
                    'Bitcoin',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF5F5F5),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.08,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$4,179.12',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF5F5F5),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.09,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              
            ],
          )
        ],
      ),
    );
  }
}
