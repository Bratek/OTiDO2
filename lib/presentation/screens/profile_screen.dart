import 'package:flutter/material.dart';
import 'package:otido2/app_library.dart';
import 'package:otido2/utils/provider/app_provider.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData appTheme = Theme.of(context);
    //final user = context.read<AppProvider>().global.user;
    final global = Provider.of<AppProvider>(context).global;
    print('profile user: ${global.user}');

    final user = global.user;

    //Controllers
    final surnameController = TextEditingController();
    surnameController.text = user.surname;
    final nameController = TextEditingController();
    nameController.text = user.name;
    final patronymicController = TextEditingController();
    patronymicController.text = user.patronymic;
    final emailController = TextEditingController();
    emailController.text = user.email;
    final seriesController = TextEditingController();
    seriesController.text = user.docSeria;
    final numberController = TextEditingController();
    numberController.text = user.docNumber;
    final dateController = TextEditingController();
    dateController.text = user.licenseDateBegin.toString();
    final endDateController = TextEditingController();
    endDateController.text = user.licenseDateEnd.toString();

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Профиль",
            style: appTheme.textTheme.titleMin,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              wTextField(context,
                  label: "Фамилия", controller: surnameController),
              wTextField(context, label: "Имя", controller: nameController),
              wTextField(context,
                  label: "Отчество", controller: patronymicController),
              wTextField(context,
                  label: S.of(context).email,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress),
              wTextField(context,
                  label: "Права серия", controller: seriesController),
              wTextField(context,
                  label: "Права номер", controller: numberController),
              wTextField(context,
                  label: "Права дата выдачи",
                  keyboardType: TextInputType.datetime,
                  controller: dateController),
              wTextField(context,
                  label: "Права срок завершения",
                  keyboardType: TextInputType.datetime,
                  controller: endDateController),
              wButton(context, label: S.of(context).sign_in,
                  onPressed: () async {
                user.withCopy(<String, dynamic>{
                  'name': nameController.text,
                  'surname': surnameController.text,
                  'patronymic': patronymicController.text,
                  'email': emailController.text,
                  'docSeria': seriesController.text,
                  'docNumber': numberController.text,
                  'licenseDateBegin': DateTime.parse(dateController.text),
                  'licenseDateEnd': DateTime.parse(endDateController.text),
                });

                await user.saveToSharedPreferences();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Данные сохранены"),
                  ),
                );
                Navigator.pushNamed(context, '/main');
              }),
            ],
          ),
        ));
  }
}
