part of 'profile.dart';

final List<Workplace> workplaces = [
  Workplace(
    company: "Levi9",
    location: "Kyiv, Ukraine",
    startDate: DateTime.parse("2020-01-08"),
    endDate: null,
    projects: [
      Project(
        name: "Backbase",
        description:
        "Platform for rapid creation of web and mobile banking applications. Backbase provides the leading Engagement Banking platform that empowers banks and other financial institutions to accelerate their digital transformation.",
        keyPoints: [
          "Develop many feature-libraries for creating mobile banking apps",
          "Architect each and every component in a backward compatible way, providing easy-to-use API",
          "Work closely with design team to bring the best mobile banking UX",
          "Take part in mobile guild initiatives (such as migrating from Jenkins to Bitrise)",
          "Discuss with customers what features/problems they face and how we can do better",
        ],
        technologies: [
          "Kotlin",
          "Koin",
          "Coroutines",
          "Architecture Components",
          "MVVM",
          "SonarQube",
          "BlackDuck",
          "Jenkins",
          "Bitrise"
        ],
        startDate: DateTime.parse("2021-10-01"),
        endDate: null,
      ),
      Project(
        name: "C. Hoare & Co.",
        description:
        "Mobile banking app for the second oldest privately owned bank in the United Kingdom.",
        keyPoints: [
          "Rewrote old hybrid app to a fully native one",
          "Developed basic security for detecting runtime hooking to the application",
          "Worked closely with QA team to improve application's accessibility level",
          "Took part in improving application's UX",
        ],
        technologies: [
          "Dagger2",
          "Kotlin",
          "Coroutines",
          "Retrofit",
          "OneSpan (ex Vasco) SDK",
          "Architecture Components",
          "Jenkins",
        ],
        startDate: DateTime.parse("2020-01-08"),
        endDate: DateTime.parse("2021-09-31"),
        links: Links(
          playStore:
          "https://play.google.com/store/apps/details?id=com.mobile.CHoareCo&hl=uk&gl=US",
        ),
      ),
    ],
  ),
  Workplace(
    company: "Vintage Web Production",
    location: "Kyiv, Ukraine",
    startDate: DateTime.parse("2018-06-01"),
    endDate: DateTime.parse("2020-06-30"),
    projects: [
      Project(
        name: "MG.Outlet",
        description:
        "E-commerce app for Mall.Global.",
        keyPoints: [
          "Developed internal library for building GraphQL queries using nice DSL",
          "Made a few proposals on how we can improve the beckend API",
          "Designed and developed customer and admin applications in pair with other developer",
          "Created two POC apps showing how product can leverage bluetooth beacons",
        ],
        technologies: [
          "Coroutines",
          "GraphQL",
          "Kotlin",
          "Koin",
          "Architecture Components",
          "AR Core",
          "Bluetooth beacons"
        ],
        startDate: DateTime.parse("2018-06-01"),
        endDate: DateTime.parse("2020-06-30"),
      ),
      Project(
        name: "Radioplayer",
        description:
        "Internet radio player for one of the biggest media holdings in Ukraine.",
        keyPoints: [
          "Implemented alarms feature",
          "Took part in designing a small part of the application",
        ],
        technologies: [
          "Dagger2",
          "RxJava2",
          "Retrofit",
          "Kotlin",
          "Architecture Components"
        ],
        startDate: DateTime.parse("2018-09-01"),
        endDate: DateTime.parse("2018-11-01"),
        links: Links(
          playStore: "https://play.google.com/store/apps/details?id=ua.radioplayer.app",
        ),
      ),
    ],
  ),
  Workplace(
    company: "Trelp Inc.",
    location: "Los Angeles, CA, USA [Remotely]",
    startDate: DateTime.parse("2016-06-01"),
    endDate: DateTime.parse("2018-07-10"),
    isProductCompany: true,
    projects: [
      Project(
        name: "Trelp",
        description:
        "Trelp is a crowd-sourcing platform for US truck drivers to improve their experience using custom interactive last-mile directions tool.",
        keyPoints: [
          "Designed and developed the entire app from scratch - from concept creation to Play Store deployment",
          "Created requirements for the beckend API",
          "Made several custom UI components",
        ],
        technologies: [
          "Java",
          "Kotlin",
          "Retrofit",
          "Dagger2",
          "RxJava2",
          "Moxy",
          "Google Maps",
          "Google Locations",
          "Google Places",
          "Firebase Auth",
          "Push Notifications",
          "Custom Views"
        ],
        startDate: DateTime.parse("2016-06-01"),
        endDate: DateTime.parse("2018-07-10"),
        links: Links(
          playStore: "https://play.google.com/store/apps/details?id=io.trelp",
        ),
      ),
    ],
  ),
];