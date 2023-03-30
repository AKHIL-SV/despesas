import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/controller/provider.dart';
import 'package:weather_app/view/add_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Tabs>(
      builder: (context, tab, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Money Manager'),
            centerTitle: true,
            leading: const Icon(Icons.menu),
            actions: tab.index == 0
                ? [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddPage(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 30,
                      ),
                    )
                  ]
                : [],
          ),
          body: tab.tab,
          bottomNavigationBar: NavigationBar(
            selectedIndex: tab.index,
            onDestinationSelected: (value) {
              tab.bottomtTab(value);
            },
            height: 65,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.card_travel),
                label: 'Category',
              )
            ],
          ),
        );
      },
    );
  }
}
