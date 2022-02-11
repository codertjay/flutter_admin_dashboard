import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('assets/images/logo.png')),
            DrawerListTile(
              press: () {},
              title: 'Dashboard',
              svgSrc: 'assets/icons/menu_dashbord.svg',
            ),
            DrawerListTile(
              press: () {},
              title: 'Transaction',
              svgSrc: 'assets/icons/menu_tran.svg',
            ),
            DrawerListTile(
              press: () {},
              title: 'Task',
              svgSrc: 'assets/icons/menu_task.svg',
            ),
            DrawerListTile(
              press: () {},
              title: 'Document',
              svgSrc: 'assets/icons/menu_doc.svg',
            ),
            DrawerListTile(
              press: () {},
              title: 'Notifiction',
              svgSrc: 'assets/icons/menu_notification.svg',
            ),
            DrawerListTile(
              press: () {},
              title: 'Profile',
              svgSrc: 'assets/icons/menu_profile.svg',
            ),
            DrawerListTile(
              press: () {},
              title: 'Setting',
              svgSrc: 'assets/icons/menu_setting.svg',
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => press,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
      ),
      title: Text(title),
    );
  }
}
