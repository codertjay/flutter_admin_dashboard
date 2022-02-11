import 'package:flutter/cupertino.dart';
import 'package:flutter_admin_dashboard/screens/dashboard/components/storage_info_card.dart';

import '../../../constants.dart';
import 'chart.dart';

class StorageDetail extends StatelessWidget {
  const StorageDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Storage Details',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          StorageInfoCard(
            svgSrc: 'assets/icons/Documents.svg',
            title: "Documents Files",
            numOfFiles: 1234,
            amountOfFiles: '1.3GB',
          ),
          StorageInfoCard(
            svgSrc: 'assets/icons/media.svg',
            title: "Media Files",
            numOfFiles: 1234,
            amountOfFiles: '15.3GB',
          ),
          StorageInfoCard(
            svgSrc: 'assets/icons/folder.svg',
            title: "Other Files",
            numOfFiles: 1234,
            amountOfFiles: '1.3GB',
          ),
          StorageInfoCard(
            svgSrc: 'assets/icons/Documents.svg',
            title: "Media Files",
            numOfFiles: 1234,
            amountOfFiles: '1.3GB',
          ),
        ],
      ),
    );
  }
}
