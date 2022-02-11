import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard/constants.dart';
import 'package:flutter_admin_dashboard/responsive.dart';

import 'components/dashboard_header.dart';
import 'components/my_files.dart';
import 'components/recent_files.dart';
import 'components/storage_detail.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        const MyFiles(),
                        const SizedBox(height: defaultPadding),
                        const RecentFiles(),
                        if (Responsive.isMobile(context))
                          const SizedBox(height: defaultPadding),
                        if (Responsive.isMobile(context)) StorageDetail(),
                      ],
                    )),
                if (!Responsive.isMobile(context))
                  const SizedBox(width: defaultPadding),
                // on mobile if the screen is less than 850
                if (!Responsive.isMobile(context))
                  const Expanded(flex: 2, child: StorageDetail()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
