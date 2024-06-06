import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import '../models/item_model.dart';

class MemberScreen extends StatelessWidget {
  const MemberScreen({Key? key}) : super(key: key);


  final List<ItemModel> numbers = const
    [
    ItemModel(
          image: 'assets/images/numbers/number_one.png',
          sound: 'sounds/numbers/number_one_sound.mp3',
          jbName: 'ichi',
          enName: 'one',
      ),
    ItemModel(
          image: 'assets/images/numbers/number_two.png',
          sound: 'sounds/numbers/number_two_sound.mp3',
          jbName: 'ni',
          enName: 'two',
      ),
    ItemModel(
          image: 'assets/images/numbers/number_three.png',
          sound: 'sounds/numbers/number_three_sound.mp3',
          jbName: 'san',
          enName: 'three',
      ),
    ItemModel(
          image: 'assets/images/numbers/number_four.png',
          sound: 'sounds/numbers/number_four_sound.mp3',
          jbName: 'shi',
          enName: 'four',
      ),
    ItemModel(
          image: 'assets/images/numbers/number_five.png',
          sound: 'sounds/numbers/number_five_sound.mp3',
          jbName: 'go',
          enName: 'five',
      ),
    ItemModel(
          image: 'assets/images/numbers/number_six.png',
          sound: 'sounds/numbers/number_six_sound.mp3',
          jbName: 'roku',
          enName: 'six',
      ),
    ItemModel(
          image: 'assets/images/numbers/number_seven.png',
          sound: 'sounds/numbers/number_seven_sound.mp3',
          jbName: 'shichi',
          enName: 'seven',
      ),
    ItemModel(
          image: 'assets/images/numbers/number_eight.png',
          sound: 'sounds/numbers/number_eight_sound.mp3',
          jbName: 'hachi',
          enName: 'eight',
      ),
    ItemModel(
          image: 'assets/images/numbers/number_nine.png',
          sound: 'sounds/numbers/number_nine_sound.mp3',
          jbName: 'kyuu',
          enName: 'nine',
      ),
    ItemModel(
          image: 'assets/images/numbers/number_ten.png',
          sound: 'sounds/numbers/number_ten_sound.mp3',
          jbName: 'juu',
          enName: 'ten',
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
            'Member',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body:  ListView.builder(
          itemBuilder: (context, index) => Item(item: numbers[index], color: const Color(0xffef9235),),
        itemCount: numbers.length,
      ),
    );
  }
}
