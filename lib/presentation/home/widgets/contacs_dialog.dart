import 'package:communication/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsDialog extends StatelessWidget {
  final String email;
  final String phone;
  final String label;

  const ContactsDialog({
    Key key,
    @required this.email,
    @required this.phone,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      shape: const ContinuousRectangleBorder(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        child: Column(
          children: [
            Text(
              S.of(context).getHomePageButtonLabel(label),
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            if (phone != null) ...[
              TextButton.icon(
                style: TextButton.styleFrom(),
                icon: const Icon(Icons.call),
                label: Text(S.of(context).call),
                onPressed: () {
                  launch('sms:$phone');
                },
              ),
              TextButton.icon(
                style: TextButton.styleFrom(),
                icon: const Icon(Icons.sms),
                label: Text(S.of(context).sendSms),
                onPressed: () {
                  launch('sms:$phone');
                },
              ),
              TextButton.icon(
                style: TextButton.styleFrom(),
                icon: const Icon(Icons.near_me),
                label: Text(S.of(context).sendSmsByTelegram),
                onPressed: () {
                  launch('sms:$phone');
                },
              ),
            ],
            if (email != null) ...[
              TextButton.icon(
                style: TextButton.styleFrom(),
                icon: const Icon(Icons.email),
                label: Text(S.of(context).sendEmail),
                onPressed: () {
                  launch('sms:$phone');
                },
              ),
            ],
          ],
        ),
      ),
    );
  }
}
