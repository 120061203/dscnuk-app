class TechInfo {
  final int position;
  final String name;
  final String iconImage;
  final String text;
  final String link;
  final String description;
  final List<String> goals;

  TechInfo(
    this.position, {
    this.name,
    this.iconImage,
    this.text,
    this.link,
    this.description,
    this.goals,
  });
}

List<TechInfo> techList = [
  TechInfo(1,
      name: 'Flutter',
      iconImage: 'images/flutter.png',
      description:
          'Flutter 是使用 Dart 語言編寫的，並利用了該語言的許多進階功能，不僅能做到 Hot Reload 加速開發。 其框架可以撰寫跨平台應用程式，也就是說寫一遍程式碼，就可以完成 Android、IOS、Web、Desktop 等部署。',
      text: '跨平台開發框架',
      link: 'https://flutter.dev/',
      goals: [
        '項目1',
      ]),
  TechInfo(2,
      name: 'TensorFlow',
      iconImage: 'images/tensorFlow.png',
      description:
          'TensorFlow 是用於機器學習的端對端開放原始碼平台，由各式各樣的工具、程式庫和社群資源所組成，功能完善且具有彈性， 讓開發人員輕鬆打造及部署採用機器學習技術的應用程式。',
      text: '機器學習軟體庫',
      link: 'https://www.tensorflow.org/',
      goals: [
        '項目1',
      ]),
  TechInfo(3,
      name: 'Android',
      iconImage: 'images/android.png',
      description:
          'TensorFlow 是用於機器學習的端對端開放原始碼平台，由各式各樣的工具、程式庫和社群資源所組成，功能完善且具有彈性， 讓開發人員輕鬆打造及部署採用機器學習技術的應用程式。',
      text: '應用程式開發',
      link: 'https://developer.android.com/',
      goals: [
        '項目1',
      ]),
  TechInfo(4,
      name: 'Firebase',
      iconImage: 'images/firebase.png',
      description:
          'TensorFlow 是用於機器學習的端對端開放原始碼平台，由各式各樣的工具、程式庫和社群資源所組成，功能完善且具有彈性， 讓開發人員輕鬆打造及部署採用機器學習技術的應用程式。',
      text: '雲端後台服務',
      link: 'https://firebase.google.com/',
      goals: [
        '項目1',
      ]),
  TechInfo(5,
      name: 'Cloud Platform',
      iconImage: 'images/cloud.png',
      description:
          'TensorFlow 是用於機器學習的端對端開放原始碼平台，由各式各樣的工具、程式庫和社群資源所組成，功能完善且具有彈性， 讓開發人員輕鬆打造及部署採用機器學習技術的應用程式。',
      text: '雲端運算服務',
      link: 'https://cloud.google.com/',
      goals: [
        '項目1',
      ]),
  TechInfo(6,
      name: 'Angular',
      iconImage: 'images/angular.png',
      description:
          'TensorFlow 是用於機器學習的端對端開放原始碼平台，由各式各樣的工具、程式庫和社群資源所組成，功能完善且具有彈性， 讓開發人員輕鬆打造及部署採用機器學習技術的應用程式。',
      text: '網頁應用框架',
      link: 'https://angular.tw/',
      goals: [
        '項目1',
      ]),
  TechInfo(7,
      name: 'DialogFlow',
      iconImage: 'images/dialogFlow.png',
      description:
          'TensorFlow 是用於機器學習的端對端開放原始碼平台，由各式各樣的工具、程式庫和社群資源所組成，功能完善且具有彈性， 讓開發人員輕鬆打造及部署採用機器學習技術的應用程式。',
      text: '人機互動技術',
      link: 'https://dialogflow.cloud.google.com/',
      goals: [
        '項目1',
      ]),
];
