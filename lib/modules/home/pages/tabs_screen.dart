import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dawa2/config/router/route_name_builder.dart';
import 'package:dawa2/modules/home/widgets/bottom_navigation/adaptive_bottom_navigation_scaffold.dart';
import 'package:dawa2/modules/home/widgets/bottom_navigation/bottom_navigation_tab.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return AdaptiveBottomNavigationScaffold(
      navigationBarItems: [
        BottomNavigationTab(
          bottomNavigationBarItem: BottomNavigationBarItem(
            icon: Icon(EvaIcons.homeOutline),
            label: "Home",
          ),
          navigatorKey: GlobalKey<NavigatorState>(),
          initialRouteName: RouteNameBuilder.homeTab(),
        ),
        BottomNavigationTab(
          bottomNavigationBarItem: BottomNavigationBarItem(
            icon: Icon(EvaIcons.gridOutline),
            label: "Categories",
          ),
          navigatorKey: GlobalKey<NavigatorState>(),
          initialRouteName: RouteNameBuilder.sectionsTab(),
        ),
        BottomNavigationTab(
          bottomNavigationBarItem: BottomNavigationBarItem(
            icon: Icon(Icons.date_range),
            label: "Appointments",
          ),
          navigatorKey: GlobalKey<NavigatorState>(),
          initialRouteName: RouteNameBuilder.reservationsTab(),
        ),
        BottomNavigationTab(
          bottomNavigationBarItem: BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_rounded),
            label: "More",
          ),
          navigatorKey: GlobalKey<NavigatorState>(),
          initialRouteName: RouteNameBuilder.moreTab(),
        ),
      ],
    );
  }
}
