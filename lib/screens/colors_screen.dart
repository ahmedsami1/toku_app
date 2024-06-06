import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import '../models/item_model.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({Key? key}) : super(key: key);


  final List<ItemModel> colors = const
  [
    ItemModel(
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jbName: 'Kuro',
        enName: 'Black',
    ),
    ItemModel(
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jbName: 'Chairo',
        enName: 'Brown'
    ),
    ItemModel(
        sound: 'sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jbName: 'Dustiieroo',
        enName: 'Dusty Yellow'
    ),
    ItemModel(
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jbName: 'Haiiro',
        enName: 'Grey'
    ),
    ItemModel(
        sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jbName: 'Midori',
        enName: 'Green'
    ),
    ItemModel(
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jbName: 'Aka',
        enName: 'Red'
    ),
    ItemModel(
        sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jbName: 'Shiro',
        enName: 'White'
    ),
    ItemModel(
        sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jbName: 'Kiiro',
        enName: 'Yellow'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xfffff4d9),
      appBar: AppBar(
        backgroundColor:  const Color(0xff49332a),
        leading: IconButton(
            onPressed: ()
            {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            )),
        title: const Text(
          'Colors',
          style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
      body:  ListView.builder(
        itemBuilder: (context, index) => Item(item: colors[index], color: const Color(0xff854cae)),
        itemCount: colors.length,
      ),
    );
  }
}
