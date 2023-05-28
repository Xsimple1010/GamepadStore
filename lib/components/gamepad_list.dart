import 'package:flutter/material.dart';
import 'package:gamepads/components/button.dart';
import 'package:gamepads/components/button_borderless.dart';
import 'package:gamepads/components/gamepad.dart';
import 'package:gamepads/data.dart';
import 'package:gamepads/models/gamepad.dart';
import 'package:ionicons/ionicons.dart';

class GamepadList extends StatefulWidget {
  const GamepadList({
    super.key,
    required this.onTab,
  });

  final Function(GamePadModel) onTab;

  @override
  State<GamepadList> createState() => _GamepadListState();
}

class _GamepadListState extends State<GamepadList> {
  PlatformGamePad selected = PlatformGamePad.playstation;
  List<GamePadModel> filteredList = [];
  List<GamePadModel> gamepads = [];

  void handleSelected(PlatformGamePad platformSelected) {
    setState(() {
      selected = platformSelected;
    });

    changeFilter(platformSelected);
  }

  void changeFilter(PlatformGamePad platformSelected) {
    filteredList.clear();

    filteredList.addAll(
      gamepads.where((gamepad) => gamepad.platformGamePad == platformSelected),
    );
  }

  @override
  void initState() {
    Data data = Data();
    data.init();
    gamepads = data.get();

    changeFilter(selected);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 40,
            top: 40,
            left: 20,
          ),
          child: Row(
            children: [
              ButtonBorderLess(
                onPressed: () {},
                icon: const Icon(Ionicons.filter_outline),
              ),
              Button(
                isSelected: selected == PlatformGamePad.playstation,
                icon: Ionicons.logo_playstation,
                onPressed: () => handleSelected(PlatformGamePad.playstation),
              ),
              Button(
                isSelected: selected == PlatformGamePad.xbox,
                icon: Ionicons.logo_xbox,
                onPressed: () => handleSelected(PlatformGamePad.xbox),
              ),
              Button(
                isSelected: selected == PlatformGamePad.nintendo,
                icon: Ionicons.logo_playstation,
                onPressed: () => handleSelected(PlatformGamePad.nintendo),
              )
            ],
          ),
        ),
        SizedBox(
          height: 320,
          child: ListView.builder(
            itemCount: filteredList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Gamepad(
              gamepad: filteredList[index],
              onTab: widget.onTab,
            ),
          ),
        )
      ],
    );
  }
}
