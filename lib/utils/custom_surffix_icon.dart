import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class CustomSurffixIcon extends StatelessWidget {
  const CustomSurffixIcon({
    Key? key,
    required this.svgIcon,
    required this.color, // Tambahkan properti warna
  }) : super(key: key);

  final String svgIcon;
  final Color color; // Deklarasikan properti warna

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
      ),
      child: SvgPicture.asset(
        svgIcon,
        // ignore: deprecated_member_use
        color: color, // Atur warna ikon di sini
        height: getProportionateScreenWidth(18),
      ),
    );
  }
}
