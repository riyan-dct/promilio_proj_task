import 'package:flutter/material.dart';
import 'package:promilio_proj/features/dashboard/presentation/pages/meetup_page.dart';
import 'package:promilio_proj/features/login/presentation/theme/login_theme.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int pageIndex = 2;
  late PageController pageViewController;

  @override
  void initState() {
    super.initState();
    pageViewController = PageController(initialPage: pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Individual Meetup",
          style: LoginTheme.boldTitleTheme,
        ),
      ),
      body: PageView(
        controller: pageViewController,
        children: const [
          Placeholder(),
          Placeholder(),
          MeetupPage(),
          Placeholder(),
          Placeholder(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.black,
        onTap: (value) {
          setState(() {
            pageIndex = value;
            pageViewController.jumpToPage(value);
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits), label: "Project"),
          BottomNavigationBarItem(
              icon: Icon(Icons.handshake_outlined), label: "Meetup"),
          BottomNavigationBarItem(
              icon: Icon(Icons.drive_file_rename_outline_sharp),
              label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_accounts), label: "Account"),
        ],
      ),
    );
  }
}
