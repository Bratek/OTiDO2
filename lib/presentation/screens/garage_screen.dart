import 'package:flutter/material.dart';
import 'package:otido2/app_library.dart';
import 'package:otido2/data/models/global.dart';
import 'package:provider/provider.dart';


class GarageScreen extends StatefulWidget {
  const GarageScreen({super.key});

  @override
  State<GarageScreen> createState() => _GarageState();
}

class _GarageState extends State<GarageScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData appTheme = Theme.of(context);
    final db = DB();
    List carList = db.getCarList();
    final globalCar = Provider.of<Global>(context).car;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          S.of(context).garage,
          style: appTheme.textTheme.titleMin,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: appTheme.colorScheme.accentColor,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      body: ListView.builder(
          itemCount: carList.length,
          itemBuilder: (context, index) {
            Car currentCar = carList[index];
            final currentColor = (index == globalCar.id
                ? appTheme.colorScheme.accentColor
                : appTheme.colorScheme.previousColor);
            return Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
              child: Container(
                //width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: currentColor,
                ),
                padding: const EdgeInsets.all(16),

                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/car',
                              arguments: currentCar);
                        },
                        child: Container(
                          color: currentColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${currentCar.brand} ${currentCar.model}",
                                style: appTheme.textTheme.body,
                                overflow: TextOverflow.fade,
                                softWrap: false,
                              ),
                              vSpace(8),
                              wGosNumber(context, carParam:  currentCar),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Container(
                        width: 1,
                        color: appTheme.colorScheme.mediumColor,
                      ),
                    ),
                    Radio(
                      value: index,
                      groupValue: currentCar.id,
                      onChanged: (_) {
                        setState(() {
                          currentCar.id = index;
                        });
                      },
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
