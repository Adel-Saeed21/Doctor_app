import 'package:advanced/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DocImgAndText extends StatelessWidget {
  const DocImgAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/LogoBackground.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withAlpha(0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [.14, .4],
            ),
          ),

          child: Image.asset('assets/images/on_boarding_doctor_img.png'),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: TextStyles.font32BlueBold.copyWith(height: 1.4),
          ),
        ),
      ],
    );
  }
}
