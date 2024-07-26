import 'package:flutter/material.dart';

class FirstProject extends StatelessWidget {
  const FirstProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 35.0,
        ),
        title: const Text(
          'First Project',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          const IconButton(
              onPressed: onClicked,
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  width: 250.0,
                  height: 250.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(30.0,),
                      topEnd: Radius.circular(30.0,),
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child:  const Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://static.pexels.com/photos/36753/flower-purple-lical-blosso.jpg',
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  margin: const EdgeInsets.symmetric(
                      vertical: 20.0
                  ),
                  color: Colors.black45,
                  child: const Text(
                    'Flowers',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void onClicked() {
  debugPrint('click');
}
