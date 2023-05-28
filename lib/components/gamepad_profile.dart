import 'package:flutter/material.dart';
import 'package:gamepads/components/gamepad_img.dart';
import 'package:gamepads/models/gamepad.dart';
import 'package:gamepads/components/information.dart';
import 'package:gamepads/components/button.dart';
import 'package:ionicons/ionicons.dart';

class GamepadProfile extends StatelessWidget {
  const GamepadProfile({
    super.key,
    required this.gamepad,
  });

  final GamePadModel gamepad;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * .452,
      child: Stack(
        children: [
          Image(
            image: const AssetImage('images/foreground_profile.png'),
            fit: BoxFit.fill,
            height: size.height * .41,
            width: size.width,
          ),
          LayoutBuilder(
            builder: (_, constraints) {
              return Container(
                height: constraints.maxHeight * .5,
                width: constraints.maxWidth * 4,
                margin: EdgeInsets.only(
                  top: constraints.maxHeight * .30,
                  left: constraints.maxWidth * .082,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Information(
                      title: 'platform',
                      information: gamepad.console == Console.playstation5
                          ? 'PS5'
                          : gamepad.console == Console.xboxSeries
                              ? 'XBOX SERIES S/X'
                              : 'Nintendo Switch',
                    ),
                    Information(
                      title: 'platform',
                      information: 'Fall ${gamepad.release}',
                    ),
                    Information(
                      title: 'platform',
                      information: '\$${gamepad.price}',
                    ),
                  ],
                ),
              );
            },
          ),
          Positioned(
            bottom: 0,
            right: size.width * .1,
            child: RotatedBox(
              quarterTurns: 3,
              child: GamepadImg(
                img: gamepad.img,
                height: size.width * .45,
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            left: size.width * .042,
            child: Button(
              isSelected: true,
              icon: Ionicons.bookmark_outline,
              onPressed: () {},
              width: 50,
              height: 50,
              borderRadius: BorderRadius.circular(50),
            ),
          )
        ],
      ),
    );
  }
}
