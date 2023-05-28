import 'package:gamepads/models/gamepad.dart';

class Data {
  final List<GamePadModel> _gamePadList = [];

  void init() {
    _gamePadList.addAll([
      GamePadModel(
        name: 'Dual sense',
        description:
            'DualSense also adds a built -in microphone array, which will enable players to easily chat with friends without a headset...',
        img: 'images/dualsense.png',
        label: 'Official PS5 _controller',
        platformGamePad: PlatformGamePad.playstation,
        console: Console.playstation5,
        release: '2020',
        price: 50,
      ),
      GamePadModel(
        name: 'Dual sense',
        description:
            'DualSense also adds a built -in microphone array, which will enable players to easily chat with friends without a headset...',
        img: 'images/dualsense_dark.png',
        label: 'Official PS5 _controller',
        platformGamePad: PlatformGamePad.playstation,
        console: Console.playstation5,
        release: '2021',
        price: 65,
      ),
      GamePadModel(
        name: 'Series S controller',
        description:
            'The controller of the Xbox Series is a wireless device that has a modernized design, with sculpted surfaces and refined geometry for improved comfort during gameplay. It has textured grip on the triggers, buttons, and back case, and a hybrid D-pad for better accuracy. It also has a dedicated Share button to capture and share content easily. It can connect to Xbox consoles, Windows PCs, Android and iOS devices via Bluetooth or USB-C cable.',
        img: 'images/xbox_controller_withe.png',
        label: 'Official XBOXS/S _controller',
        platformGamePad: PlatformGamePad.xbox,
        console: Console.xboxSeries,
        release: '2020',
        price: 55,
      ),
      GamePadModel(
        name: 'Series S controller',
        description:
            'The controller of the Xbox Series is a wireless device that has a modernized design, with sculpted surfaces and refined geometry for improved comfort during gameplay. It has textured grip on the triggers, buttons, and back case, and a hybrid D-pad for better accuracy. It also has a dedicated Share button to capture and share content easily. It can connect to Xbox consoles, Windows PCs, Android and iOS devices via Bluetooth or USB-C cable.',
        img: 'images/xbox_controller_blue.png',
        label: 'XBOXS/S _blue color',
        platformGamePad: PlatformGamePad.xbox,
        console: Console.xboxSeries,
        release: '2022',
        price: 60,
      ),
      GamePadModel(
        name: 'Joy-con',
        description:
            'The joy-con is the controller of the Nintendo Switch, a versatile device that allows different ways of playing. The joy-con can be used as two independent controllers, one in each hand, or as one controller when attached to the joy-con grip. It can also be attached to the main console for handheld mode, or shared with friends for two-player action. The joy-con has motion control, HD rumble, and IR camera features.',
        img: 'images/nintendo_joy_con.png',
        label: 'Official Switch _controller',
        platformGamePad: PlatformGamePad.nintendo,
        console: Console.nintendoSwitch,
        release: '2019',
        price: 90,
      ),
    ]);
  }

  List<GamePadModel> get() {
    return _gamePadList;
  }
}
