import 'package:flutter/material.dart';
import 'package:hackdfw/pages/mainpage.dart';
import 'package:hackdfw/pages/chat/ChannelListPage.dart';
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:hackdfw/globals.dart' as globals;



Future<void> main() async {

  // WidgetsFlutterBinding.ensureInitialized();
  // /*
  // for local notifications
  //  */
  // var initializationSettingsIOS = IOSInitializationSettings(
  //   requestAlertPermission: true,
  //   requestBadgePermission: true,
  //   requestSoundPermission: true,
  //   // onDidReceiveLocalNotification:
  //   //     (int id, String title, String body, String payload) async {},
  // );
  //
  // var initializationSettings =
  // InitializationSettings(iOS: initializationSettingsIOS);

  // await flutterLocalNotificationsPlugin.initialize(initializationSettings,
  //     onSelectNotification: (String payload) async {
  //   if (payload != NULL) {
  //     debugPrint('notification payload: ' + payload);
  //   }
  // });

  /// Create a new instance of [StreamChatClient] passing the apikey obtained from your
  /// project dashboard.
  final client = StreamChatClient(
    'tkdqy376v9bt',
    logLevel: Level.INFO,
  );

  /// Set the current user. In a production scenario, this should be done using
  /// a backend to generate a user token using our server SDK.
  /// Please see the following for more information:
  /// https://getstream.io/chat/docs/flutter-dart/tokens_and_authentication/?language=dart
  await client.connectUser(
    User(id: 'John'),
    '''eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoiSm9obiJ9.VuXsV-__FTeKcfrW-QSec48ZZZeb0KVNut3ynUMk88M''',
  );

  /// Creates a channel using the type `messaging` and `flutterdevs`.
  /// Channels are containers for holding messages between different members. To
  /// learn more about channels and some of our predefined types, checkout our
  /// our channel docs: https://getstream.io/chat/docs/flutter-dart/creating_channels/?language=dart
  final channel = client.channel('messaging', id: 'cinder');
  globals.channel = channel;

  /// `.watch()` is used to create and listen to the channel for updates. If the
  /// channel already exists, it will simply listen for new events.
  channel.watch();

  runApp(MyApp(
    client: client,
    channel: channel,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.client,
    required this.channel,
  }) : super(key: key);

  /// Instance of [StreamChatClient] we created earlier. This contains information about
  /// our application and connection state.
  final StreamChatClient client;

  /// The channel we'd like to observe and participate.
  final Channel channel;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            return MaterialApp(
              builder: (context, widget) {
                return StreamChat(
                  client: client,
                  child: widget,
                );
              },

              initialRoute: "/HomePage",
              //initialRoute: "/IdleAnimation",
              //initialRoute: "/NFCAchieved",
              //  Page Routes
              routes: {
                "/HomePage": (context) => HomePage(),
                "/ChatPage": (context) => StreamChannel(
                  channel: channel,
                  child: const ChannelListPage(),
                ),
              },
            );
          },
        );
      },
    );
  }
}
