import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ItemCard extends StatelessWidget {
  ItemCard({
    Key? key,
    required this.image,
    required this.text,
    required this.description,
  }) : super(key: key);
  final String image, text, description;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 246, 249, 249),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 60,
            ),
            child: SizedBox(
              height: 600,
              width: 300,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 300,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 247, 247, 247),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset(image),
                    ),
                  ),
                  Container(
                    height: 400,
                    width: 300,
                    decoration: const BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: SizedBox(
                            child: Text(
                              text,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25,
                                  fontFamily: 'JosefinSans'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                description,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.black54,
                                  wordSpacing: 5,
                                  overflow: TextOverflow.fade,
                                  fontFamily: 'Lobster',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            IconButton(
                              onPressed: () {
                                Share.share(description);
                              },
                              icon: Icon(Icons.share),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
