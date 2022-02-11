import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard/models/MyFiles.dart';
import 'package:flutter_admin_dashboard/responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding + 1.5,
                  vertical: defaultPadding,
                )),
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Add New')),
          ],
        ),
        const SizedBox(height: defaultPadding),
        Responsive(
            mobile: FileInfoCardGridView(
              crossAxisCount: _size.width < 650 ? 2 : 4,
              childAspectRation: _size.width < 650 ? 1.3:1,
            ),
            tablet: FileInfoCardGridView(

            ),
            desktop: FileInfoCardGridView(
              childAspectRation: _size.width < 1400 ? 1.1 : 1.4,
            ))
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRation = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRation;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiels.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding,
          childAspectRatio: childAspectRation),
      itemBuilder: (context, index) => FileInfoCard(
        info: demoMyFiels[index],
      ),
    );
  }
}
