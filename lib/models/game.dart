class Game {
  String bgImg;
  String icon;
  String name;
  String type;
  num score;
  num download;
  num review;
  String desc;
  List<String> imgs;
  Game(
    this.bgImg,
    this.icon,
    this.name,
    this.type,
    this.score,
    this.download,
    this.review,
    this.desc,
    this.imgs,
  );
  static List<Game> generateGames() {
    return [
      Game(
        'assets/images/ori1.jpg',
        'assets/images/ori_logo.png',
        'Ori and the blind forest',
        'Adventure',
        4.8,
        382,
        300,
        'The littele sipirit safdsa Ori and the blind forestOri and the blind forestOri and the blind forestOri and the blind forestOri and the blind forestOri and the blind forest',
        [
          'assets/images/ori2.jpg',
          'assets/images/ori3.jpg',
          'assets/images/ori4.jpg',
          'assets/images/ori5.jpg',
        ],
      ),
      Game(
        'assets/images/rl1.jpg',
        'assets/images/rl_logo.png',
        'RayMan Legends',
        'Adventure',
        4.8,
        382,
        300,
        'The littele Ori and the blind forestOri and the blind forestOri and the blind forest safdsa Ori and the blind forestOri and the blind forest',
        [
          'assets/images/rl2.jpg',
          'assets/images/rl3.jpg',
          'assets/images/rl4.jpg',
          'assets/images/rl5.jpg',
        ],
      ),
    ];
  }
}
