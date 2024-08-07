import 'package:flutter/cupertino.dart';

import 'chat_page.dart';
import 'settings_page.dart';

class CupertinoChatHomePage extends StatelessWidget {
  const CupertinoChatHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: 1,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chart_bar_square_fill),
            label: 'Users',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        late final CupertinoTabView returnValue;
        switch (index) {
          case 0:
            returnValue = CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  navigationBar: CupertinoNavigationBar(
                    middle: Text('GSU Test Page'),
                  ),
                  child: Center(
                    child: Text('Home Test'),
                  ),
                );
              },
            );
            break;
          case 1:
            returnValue = CupertinoTabView(
              builder: (context) {
                return const CupertinoChatPage();
              },
            );
            break;
          case 2:
            returnValue = CupertinoTabView(
              builder: (context) {
                return const CupertinoSettingsPage();
              },
            );
            break;
        }
        return returnValue;
      },
    );
  }
}
