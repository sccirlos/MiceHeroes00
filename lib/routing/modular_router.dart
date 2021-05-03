import 'package:auto_route/auto_route_annotations.dart';
import 'package:mice_heroes_01/routes/home.dart';
import 'package:mice_heroes_01/routes/login.dart';
import 'package:mice_heroes_01/routes/menu.dart';
import 'package:mice_heroes_01/routes/settings.dart';

@MaterialAutoRouter (

  routes: <AutoRoute>[

    MaterialRoute(page:LoginPage, initial: true),
    MaterialRoute(page:HomePage),
    MaterialRoute(page:MenuPage),
    MaterialRoute(page:SettingsPage),

  ],



)

class $ModularRouter {}


// flutter pub run build_runner watch --delete-conflicting-outputs

