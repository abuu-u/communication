import 'package:communication/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          const iconsRootPath = 'assets/home_page_icons';
          final buttonWidth = constraints.maxWidth * 0.32;
          final spacing = constraints.maxWidth * 0.02;

          return ListView(children: [
            Text(S.of(context).information),
            const SizedBox(height: 15),
            Wrap(
              runSpacing: spacing,
              spacing: spacing,
              children: [
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
              ]
                  .map(
                    (e) => ElevatedButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: const Color(0xFFF2F2F2),
                      ),
                      onPressed: () {},
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        width: buttonWidth,
                        height: buttonWidth,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: Svg(
                              e['iconPath'],
                              size: Size.square(buttonWidth / 2),
                              color: const Color(0xFFE0E0E0),
                            ),
                          ),
                        ),
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          S.of(context).getHomePageButtonLabel(e['label']),
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                                height: 1.0,
                              ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 15),
            Text(S.of(context).contacts),
            const SizedBox(height: 15),
            Wrap(
              runSpacing: spacing,
              spacing: spacing,
              children: [
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
              ]
                  .map(
                    (e) => ElevatedButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: const Color(0xFFF2F2F2),
                      ),
                      onPressed: () {
                        final email = e['email'];
                        final phone = e['phone'];

                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                insetPadding: const EdgeInsets.symmetric(
                                  horizontal: 30.0,
                                ),
                                shape: const ContinuousRectangleBorder(),
                                child: ListView(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0, horizontal: 10.0),
                                  shrinkWrap: true,
                                  children: [
                                    Text(
                                      S
                                          .of(context)
                                          .getHomePageButtonLabel(e['label']),
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(height: 15),
                                    if (phone != null) ...[
                                      ListTile(
                                        leading: const Icon(Icons.call),
                                        title: Text(S.of(context).call),
                                        onTap: () {
                                          launch('tel:$phone');
                                        },
                                      ),
                                      ListTile(
                                        leading: const Icon(Icons.sms),
                                        title: Text(S.of(context).sendSms),
                                        onTap: () {
                                          launch('sms:$phone');
                                        },
                                      ),
                                      ListTile(
                                        leading: const Icon(Icons.near_me),
                                        title: Text(
                                            S.of(context).sendSmsByTelegram),
                                        onTap: () {
                                          launch('https://t.me/abuu123456789');
                                        },
                                      ),
                                    ],
                                    if (email != null) ...[
                                      ListTile(
                                        leading: const Icon(Icons.email),
                                        title: Text(S.of(context).sendEmail),
                                        onTap: () {
                                          launch('mailto:$email');
                                        },
                                      ),
                                    ],
                                  ],
                                ),
                              );
                            });

                        // showFlash(
                        //     context: context,
                        //     builder: (context, controller) {
                        //       return Flash.dialog(
                        //         controller: controller,
                        //         child: Flash.bar(controller: controller, child: child),
                        //         );
                        //     });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        width: buttonWidth,
                        height: buttonWidth,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: Svg(
                              e['iconPath'],
                              size: Size.square(buttonWidth / 2),
                              color: const Color(0xFFE0E0E0),
                            ),
                          ),
                        ),
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          S.of(context).getHomePageButtonLabel(e['label']),
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                                height: 1.0,
                              ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ]);
        },
      ),
    );
  }
}
