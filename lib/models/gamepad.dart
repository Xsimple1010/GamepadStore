enum PlatformGamePad { playstation, xbox, nintendo, all }

enum Console {
  playstation5,
  xboxSeries,
  nintendoSwitch,
}

class GamePadModel {
  String name;
  String description;
  String label;
  String img;
  PlatformGamePad platformGamePad;
  Console console;
  String release;
  int price;

  GamePadModel({
    required this.name,
    required this.description,
    required this.label,
    required this.img,
    required this.platformGamePad,
    required this.console,
    required this.release,
    required this.price,
  });
}
