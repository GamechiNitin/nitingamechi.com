import "dart:math";

abstract class AppAssets {
  static const String kProfile = 'assets/image/other/dash.png';
  static const String kDash1 = 'assets/image/other/dash2022_4k.png';
  static const String kGithub = 'assets/image/icon/github.png';
  static const String kLinkedin = 'assets/image/icon/linked_in.png';
  static const String kLinkedin2 = 'assets/image/icon/linkedin.png';
  static const String nitin = 'assets/image/other/nitin.jpg';

  static const String kcontact =
      'assets/image/other/Modern-Digital-Communication.jpeg';
  static const String kcontact1 = 'assets/image/other/Tech-Savvy-Duo.jpeg';

  // Social
  static const String kflutter = 'assets/image/icon/flutter.png';
  static const String kAndroid = 'assets/image/icon/android.png';
  static const String kDart = 'assets/image/icon/dart.png';
  static const String kfigma = 'assets/image/icon/figma.png';
  static const String kgit = 'assets/image/icon/git.png';
  static const String kfirebase = 'assets/image/icon/firebase.png';
  static const String kNodeJs = 'assets/image/icon/node-js.png';
  static const String kkotlin = 'assets/image/icon/kotlin.png';
  static const String kplaystore = 'assets/image/icon/playstore.png';
  static const String kAppStore = 'assets/image/icon/app-store.png';
  static const String kvscode = 'assets/image/icon/code.png';
  static const String kpostman = 'assets/image/icon/postman.png';
  static const String kgo = 'assets/image/icon/go.png';

  // Talk
  static const String kTalk1 = 'assets/image/project/talk/1.png';
  static const String kTalk2 = 'assets/image/project/talk/2.png';
  static const String kTalk3 = 'assets/image/project/talk/3.png';
  static const String kTalk4 = 'assets/image/project/talk/4.png';
  static const String kTalk5 = 'assets/image/project/talk/5.png';
  static const String kTalk6 = 'assets/image/project/talk/6.png';
  static const String kTalk7 = 'assets/image/project/talk/7.png';
  // Rive
  static const String kDash = 'assets/rive/dash.riv';

  static const List<(String, String)> imageList = [
    (kflutter, "Flutter"),
    (kDart, "Dart"),
    (kfirebase, "Firebase"),
    (kAndroid, "Android"),
    (kkotlin, "Kotlin"),
    (kNodeJs, "Node js"),
    (kgo, "Go"),
    (kfigma, "Figma"),
    (kpostman, "Postman"),
    (kgit, "Git"),
    (kGithub, "Github"),
    (kplaystore, "Play Store"),
    (kAppStore, "App Store"),
    (kvscode, "Vs Code"),
  ];

  static const List<String> contactImageList = [kcontact, kcontact1];
  static String getContactAssets() {
    final random = Random();

    if (contactImageList.isEmpty) {
      return kcontact;
    }
    int randomIndex = random.nextInt(contactImageList.length);
    return contactImageList[randomIndex];
  }
}
