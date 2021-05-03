import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mice_heroes_01/colors01.dart';
import 'package:mice_heroes_01/routes/login.dart';
import 'package:mice_heroes_01/routing/modular_router.gr.dart';


//state will remain the same, doesnt need to change
class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MiceHeroes",
      onGenerateRoute: ModularRouter(),
      builder: ExtendedNavigator.builder(

        router: ModularRouter(),
        initialRoute: Routes.loginPage,
        builder: (_, extendedNav) => Theme(

          data: _buildAppTheme(),
          child: extendedNav,


        ),
      ), // extendedNavigator.builder
    );
  }
// user has to go through a method- see encapsulation
  ThemeData _buildAppTheme() {}

  TextTheme _buildApptextTheme(textTheme base) {

    return base.copyWidth(

      headline6: base.headline6.copyWidth(

        //adjusting fonts!
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: appBluePrimary,
      ),

      headline5: ,
      bodyText1: ,
      //you can have different sizes for pages

    ).apply(

      // add font family
      fontfamily: 'Ubuntu',
    );


  }
}