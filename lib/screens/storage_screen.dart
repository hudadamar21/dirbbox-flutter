import 'package:dirbbird/consts/PADDING_X.dart';
import 'package:dirbbird/consts/STORAGE_COLORS.dart';
import 'package:dirbbird/widgets/drawer/app_drawer.dart';
import 'package:dirbbird/widgets/pie_chart.dart';
import 'package:flutter/material.dart';

class StorageScreen extends StatelessWidget {
  StorageScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _closeDrawer() {
    _scaffoldKey.currentState?.closeDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: AppDrawer(onClose: _closeDrawer),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: [
              Padding(
                padding: PADDING_X,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, '/home'),
                      borderRadius: BorderRadius.circular(5),
                      child: const Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          size: 20,
                        ),
                      ),
                    ),
                    const Text(
                      'Storage Details',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(5),
                      child: const Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.more_horiz,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const PieChartSample2(),
              const Text(
                'Available',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 5),
              const Text(
                '43.36 GB',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Total 128 GB',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 30),
              Wrap(
                runSpacing: 20.0,
                children: [
                  StorageItem(
                    name: 'Design Files',
                    size: '38.66 GB',
                    color: StorageColors.designFiles,
                    percentage: 0.60,
                  ),
                  StorageItem(
                    name: 'Images',
                    size: '24.80 GB',
                    color: StorageColors.images,
                    percentage: 0.50,
                  ),
                  StorageItem(
                    name: 'Videos',
                    size: '12.60 GB',
                    color: StorageColors.videos,
                    percentage: 0.40,
                  ),
                  StorageItem(
                    name: 'Documents',
                    size: '6.57 GB',
                    color: StorageColors.documents,
                    percentage: 0.70,
                  ),
                  StorageItem(
                    name: 'Others',
                    size: '2.01 GB',
                    color: StorageColors.others,
                    percentage: 0.20,
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    child: Text(
                      'Export Details',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class StorageItem extends StatelessWidget {
  const StorageItem({
    required this.name,
    required this.size,
    required this.color,
    required this.percentage,
    super.key,
  });

  final String name;
  final String size;
  final Color color;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PADDING_X,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 8),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    size,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            width: 140,
            height: 6,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 238, 247, 254),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child: FractionallySizedBox(
                widthFactor: percentage,
                child: Container(
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
