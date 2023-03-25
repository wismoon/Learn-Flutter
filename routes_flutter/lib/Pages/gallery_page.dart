import 'package:flutter/material.dart';
import 'package:routes_flutter/Pages/photo_page.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  static const nameRoute = 'gallerypage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Gallery Page",
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
                onPressed: (() {
                  Navigator.of(context).pushNamed(PhotoPage.nameRoute);
                }),
                child: Text("Photo"))
          ],
        ),
      ),
    );
  }
}
