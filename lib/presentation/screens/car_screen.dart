import 'package:flutter/material.dart';
import 'package:otido2/app_library.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentCar = ModalRoute.of(context)!.settings.arguments as Car;

    final controller_Number = TextEditingController();
    controller_Number.text = currentCar.gosNumber;
    final controller_region = TextEditingController();
    controller_region.text = currentCar.gosNumber;
    final controller_Brand = TextEditingController();
    controller_Brand.text = currentCar.brand;
    final controller_Model = TextEditingController();
    controller_Model.text = currentCar.model;
    final controller_Type = TextEditingController();

    ThemeData appTheme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          S.of(context).vehicle,
          style: appTheme.textTheme.titleMin,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              wTextField(context,
                  label: S.of(context).gosNumber,
                  controller: controller_Number),
              wTextField(context,
                  label: S.of(context).region, controller: controller_region),
              wTextField(context,
                  label: S.of(context).carType, controller: controller_Type),
              wTextField(context,
                  label: S.of(context).carBrand, controller: controller_Brand),
              wTextField(context,
                  label: S.of(context).carModel, controller: controller_Model),
            ],
          ),
        ),
      ),
    );
  }
}
