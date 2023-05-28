import 'package:flutter/material.dart';
import 'package:gamepads/components/footer_button.dart';
import 'package:gamepads/components/footer_container.dart';
import 'package:ionicons/ionicons.dart';

enum FooterSection { home, profile, setting, favorite }

class HomePageFooter extends StatefulWidget {
  const HomePageFooter({super.key});

  @override
  State<HomePageFooter> createState() => _HomePageFooterState();
}

class _HomePageFooterState extends State<HomePageFooter> {
  FooterSection selectedSection = FooterSection.home;

  void handleSelected(FooterSection section) {
    setState(() {
      selectedSection = section;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FooterContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FooterButton(
            isSelected: selectedSection == FooterSection.home,
            icon: Ionicons.home_outline,
            label: 'Home',
            onPressed: () => handleSelected(FooterSection.home),
            footerButtonIconPosition: FooterButtonIconPosition.left,
          ),
          FooterButton(
            isSelected: selectedSection == FooterSection.profile,
            icon: Ionicons.person,
            label: 'Profile',
            onPressed: () => handleSelected(FooterSection.profile),
            footerButtonIconPosition: FooterButtonIconPosition.left,
          ),
          FooterButton(
            isSelected: selectedSection == FooterSection.setting,
            icon: Ionicons.settings,
            label: 'Settings',
            onPressed: () => handleSelected(FooterSection.setting),
            footerButtonIconPosition: FooterButtonIconPosition.left,
          ),
          FooterButton(
            isSelected: selectedSection == FooterSection.favorite,
            icon: Icons.bookmark,
            label: 'Favorites',
            onPressed: () => handleSelected(FooterSection.favorite),
            footerButtonIconPosition: FooterButtonIconPosition.left,
          )
        ],
      ),
    );
  }
}
