import 'package:flutter/material.dart';

class FooterContainer extends StatelessWidget {
  const FooterContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .89,
      height: 85,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 234, 242, 249),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2,
          color: const Color.fromARGB(255, 243, 248, 252),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(57, 27, 27, 27),
            blurRadius: 20,
            spreadRadius: 2,
            offset: Offset(5, 10),
          ),
          BoxShadow(
            color: Color.fromARGB(232, 248, 248, 248),
            blurRadius: 20,
            spreadRadius: 2,
            offset: Offset(-5, -10),
          )
        ],
      ),
      child: child,
    );
  }
}
