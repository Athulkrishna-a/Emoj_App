import 'package:flutter/material.dart';
import 'package:social_media_flutter/social_media_flutter.dart';

class AppInfo extends StatelessWidget {
  const AppInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Text(
            "Contact info",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SocialWidget(
                iconData: SocialIconsFlutter.instagram,
                placeholderText: "Athul Krishna",
                link: "https://www.instagram.com/___.athul._.k.r.i.s.h.n.a___/",
              ),
              const SizedBox(
                height: 20,
              ),
              SocialWidget(
                iconData: SocialIconsFlutter.github,
                placeholderText: "Athul Krishna",
                link: "https://github.com/Athulkrishna-a",
              ),
              const SizedBox(
                height: 20,
              ),
              SocialWidget(
                iconData: SocialIconsFlutter.facebook,
                placeholderText: "Athul Krishna",
                link: "https://www.facebook.com/athul.krishnaa.90/",
              ),
              const SizedBox(
                height: 20,
              ),
              SocialWidget(
                iconData: SocialIconsFlutter.twitter,
                placeholderText: "Athul Krishna",
                link: "https://twitter.com/Athulkrishna420",
              ),
            ],
          ),
        ));
  }
}
