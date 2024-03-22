import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ServicesPage extends StatefulWidget {
  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  void launchWhatsApp(String phoneNumber, String message) async {
    String url =
        'whatsapp://send?phone=$phoneNumber&text=${Uri.encodeFull(message)}';
    if (await canLaunchUrl(url as Uri)) {
      await launchUrl(url as Uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            launchWhatsApp('+919096158897', 'Hello from Flutter!');
          },
          child: const Text('Send WhatsApp Message'),
        ),
      ),
    );
  }
}
