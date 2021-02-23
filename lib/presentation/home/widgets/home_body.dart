import 'package:communication/generated/l10n.dart';
import 'package:communication/presentation/home/widgets/card_button.dart';
import 'package:communication/presentation/home/widgets/contacs_dialog.dart';
import 'package:flutter/material.dart';

const iconsRootPath = 'assets/home_page_icons';
const List<Map<String, String>> informations = [
  {
    'iconPath': '$iconsRootPath/about_company.svg',
    'label': 'aboutCompany',
  },
  {
    'iconPath': '$iconsRootPath/about_products.svg',
    'label': 'aboutProducts',
  },
  {
    'iconPath': '$iconsRootPath/about_novelty.svg',
    'label': 'aboutNovelty',
  },
  {
    'iconPath': '$iconsRootPath/about_programs.svg',
    'label': 'aboutPrograms',
  },
  {
    'iconPath': '$iconsRootPath/about_price.svg',
    'label': 'aboutPrice',
  },
];

const List<Map<String, String>> contacts = [
  {
    'iconPath': '$iconsRootPath/phone.svg',
    'label': 'supervisorPmiPhone',
    'phone': '+998123456789',
  },
  {
    'iconPath': '$iconsRootPath/phone.svg',
    'label': 'supervisorDdrPhone',
    'phone': '+998987654321',
  },
  {
    'iconPath': '$iconsRootPath/phone.svg',
    'label': 'hotlinePhone',
    'phone': '+998192837465',
  },
  {
    'iconPath': '$iconsRootPath/email.svg',
    'label': 'email',
    'email': 'email@email.email',
  },
];

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final buttonWidth = constraints.maxWidth * 0.32;
          final spacing = constraints.maxWidth * 0.02;

          return ListView(children: [
            Text(S.of(context).information),
            const SizedBox(height: 15),
            Wrap(
              runSpacing: spacing,
              spacing: spacing,
              children: informations.map(
                (e) {
                  final label = e['label'];
                  final iconPath = e['iconPath'];

                  return CardButton(
                    iconPath: iconPath,
                    buttonWidth: buttonWidth,
                    label: label,
                    onPressed: () {},
                  );
                },
              ).toList(),
            ),
            const SizedBox(height: 15),
            Text(S.of(context).contacts),
            const SizedBox(height: 15),
            Wrap(
              runSpacing: spacing,
              spacing: spacing,
              children: contacts.map(
                (e) {
                  final email = e['email'];
                  final phone = e['phone'];
                  final label = e['label'];
                  final iconPath = e['iconPath'];

                  return CardButton(
                    iconPath: iconPath,
                    buttonWidth: buttonWidth,
                    label: label,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => ContactsDialog(
                          email: email,
                          phone: phone,
                          label: label,
                        ),
                      );
                    },
                  );
                },
              ).toList(),
            ),
          ]);
        },
      ),
    );
  }
}
