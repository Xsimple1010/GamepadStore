import 'package:flutter/material.dart';
import 'package:gamepads/components/footer_label.dart';
import 'package:gamepads/components/custom_divider.dart';

enum FooterButtonIconPosition { left, right }

class FooterButton extends StatelessWidget {
  const FooterButton({
    super.key,
    required this.isSelected,
    required this.icon,
    required this.label,
    required this.onPressed,
    required this.footerButtonIconPosition,
  });

  final bool isSelected;
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final FooterButtonIconPosition footerButtonIconPosition;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isSelected,
      replacement: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: const Color.fromARGB(255, 88, 99, 117),
        ),
      ),
      child: _Selected(
        footerButtonIconPosition: footerButtonIconPosition,
        label: label,
        iconButton: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class _Selected extends StatelessWidget {
  const _Selected({
    required this.iconButton,
    required this.label,
    required this.footerButtonIconPosition,
  });

  final IconButton iconButton;
  final String label;
  final FooterButtonIconPosition footerButtonIconPosition;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(57, 27, 27, 27),
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(7, 5),
          ),
        ],
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 83, 133, 237),
            Color.fromARGB(255, 39, 108, 241)
          ],
        ),
      ),
      child: Visibility(
        visible: footerButtonIconPosition == FooterButtonIconPosition.left,
        replacement: _RightPosition(
          iconButton: iconButton,
          label: label,
        ),
        child: _LeftPosition(
          iconButton: iconButton,
          label: label,
        ),
      ),
    );
  }
}

class _LeftPosition extends StatelessWidget {
  const _LeftPosition({
    required this.iconButton,
    required this.label,
  });

  final IconButton iconButton;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [iconButton, const CustomDivider(), FooterLabel(label: label)],
    );
  }
}

class _RightPosition extends StatelessWidget {
  const _RightPosition({
    required this.iconButton,
    required this.label,
  });

  final IconButton iconButton;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FooterLabel(label: label),
        const CustomDivider(),
        iconButton,
      ],
    );
  }
}
