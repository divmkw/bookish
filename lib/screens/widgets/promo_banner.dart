import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = MediaQuery.of(context).size.width;;
      
        // Responsive scaling factors
        final horizontalPadding = width * 0.05;
        final bannerHeight = width * 0.5; // dynamic height
        final titleSize = width * 0.08;
        final subtitleSize = width * 0.04;
        final imageSize = width * 0.25;

        return Container(
          height: bannerHeight,
          padding: EdgeInsets.all(horizontalPadding),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFFD8DCFF), Color(0xFFB7C1FF)],
            ),
            borderRadius: BorderRadius.circular(width * 0.05),
          ),
          child: Row(
            children: [
              /// Left Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "45% Off",
                      style: TextStyle(
                        fontSize: titleSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: width * 0.02),
                    Text(
                      "On your first read",
                      style: TextStyle(fontSize: subtitleSize),
                    ),
                    SizedBox(height: width * 0.03),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.04,
                        vertical: width * 0.015,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius:
                            BorderRadius.circular(width * 0.03),
                      ),
                      child: Text(
                        "SHOP NOW",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.035,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              /// Right Image
              SizedBox(
                width: imageSize,
                height: imageSize,
                child: Image.network(
                  "https://picsum.photos/200",
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
