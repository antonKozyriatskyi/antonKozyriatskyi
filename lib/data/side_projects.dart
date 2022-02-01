part of 'profile.dart';

final List<Project> sideProjects = [
  Project(
    name: "Kart by KartMarkets",
    description:
        "Kart is the platform that makes it easy for operators to manage their market businesses and allows customers to make purchases via their smartphone.",
    keyPoints: [
      "I took major part in designing the application",
      "Developed cross-platform app for Android and iOS using Flutter",
      "Created CLI tool for building different flavors of the app",
    ],
    technologies: [
      "Flutter",
      "BLoC",
      "Custom service locator for DI",
      "QR codes scanning"
    ],
    startDate: DateTime.parse("2020-12-01"),
    endDate: DateTime.parse("2021-12-01"),
    links: Links(
      playStore:
          "https://play.google.com/store/apps/details?id=com.kartmarkets.kart&hl=en_US",
      appStore:
          "https://apps.apple.com/us/app/kart-by-kartmarkets/id1517154604",
    ),
  ),
  Project(
    name: "Sked + Backend",
    description:
        "Application and server that give students and teachers of State University of Telecommunications access to their lessons schedule. All schedule is stored in a database and is automatically updated once per day.",
    keyPoints: [
      "Designed API and developed backend for schedule parsing",
      "Set up CI using Github Actions",
      "Reached 4.8 rate in Play Store and 99.9% of crash-free users",
    ],
    technologies: [
      "Jsoup",
      "Kotlin",
      "Coroutines",
      "Jetpack Compose (in progress)",
      "Dagger2",
      "RxJava2",
      "Room",
      "Firebase JobDispatcher",
      "WorkManager",
      "Moxy",
      "Coroutines",
      "Ktor",
      "Docker",
      "Heroku",
    ],
    startDate: DateTime.parse("2017-06-01"),
    links: Links(
      playStore:
          "https://play.google.com/store/apps/details?id=kozyriatskyi.anton.sked&hl=en_US",
    ),
  ),
  Project(
    name: "Empty Fridge",
    description:
        "App for searching for recipes based on ingredients you have and saving them for offline viewing.",
    keyPoints: [
      "Redesigned application to match the latest specs of Material Guidelines",
      "Refactored entire application significantly reducing amount of crashes",
      "Integrated AdMob monetization",
    ],
    technologies: [
      "Retrofit",
      "ButterKnife",
      "Food2Fork API",
      "AdMobs SDK",
      "Realm DB",
    ],
    startDate: DateTime.parse("2016-06-01"),
    endDate: DateTime.parse("2016-08-01"),
    links: Links(
      playStore:
          "https://play.google.com/store/apps/details?id=edu.sbcc.cs123.s12.schabanovfinalapp&hl=uk",
    ),
  ),
];
