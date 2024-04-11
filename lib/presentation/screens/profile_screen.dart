import 'package:flutter/material.dart';
import 'package:otido2/app_library.dart';
import 'package:otido2/data/models/preferences.dart';
import 'package:otido2/data/repositories/preferences_repo.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData appTheme = Theme.of(context);
    final Preferences pref;
    pref = ModalRoute.of(context)!.settings.arguments as Preferences;
    User user = pref.user;

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
                PreferencesRepo repo = PreferencesRepo();
                user = User(
                    name: nameController.text,
                    surname: surnameController.text,
                    patronymic: patronymicController.text,
                    email: emailController.text,
                    docSeria: seriesController.text,
                    docNumber: numberController.text,
                    licenseDateBegin: DateTime.parse(dateController.text),
                    licenseDateEnd: DateTime.parse(endDateController.text));

                pref.user = user;
                await repo.savePreferences(pref);
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
