import 'package:flutter/material.dart';
import 'package:toku/components/phrases_item.dart';
import '../models/item_model.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({Key? key}) : super(key: key);


  final List<ItemModel> phrases = const
  [
    ItemModel(
        sound: 'sounds/phrases/are_you_coming.wav',
        jbName: 'Kimasu ka ?',
        enName: 'Are you coming ?',
    ),
    ItemModel(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        jbName: 'Kōdoku o o wasurenaku',
        enName: 'Don\'t forget to subscribe',
    ),
    ItemModel(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        jbName: 'Genkidesuka ?',
        enName: 'How are you ?',
    ),
    ItemModel(
        sound: 'sounds/phrases/i_love_anime.wav',
        jbName: 'Watashi wa anime ga daisukidesu',
        enName: 'I love anime',
    ),
    ItemModel(
        sound: 'sounds/phrases/i_love_programming.wav',
        jbName: 'Watashi wa puroguramingu ga daisukidesu',
        enName: 'I love programming',
    ),
    ItemModel(
        sound: 'sounds/phrases/programming_is_easy.wav',
        jbName: 'Puroguramingu wa kantan',
        enName: 'Programming is easy',
    ),
    ItemModel(
        sound: 'sounds/phrases/what_is_your_name.wav',
        jbName: 'Anata no namae wa nanidesu ka ?',
        enName: 'What is your name ?',
    ),
    ItemModel(
        sound: 'sounds/phrases/where_are_you_going.wav',
        jbName: 'Doko ni iku no ?',
        enName: 'Where are you going ?',
    ),
    ItemModel(
        sound: 'sounds/phrases/yes_im_coming.wav',
        jbName: 'Hai, ikimasu',
        enName: 'Yes i\'m coming',
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
          'Phrases',
          style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
      body:  ListView.builder(
        itemBuilder: (context, index) =>
            PhrasesItem(item: phrases[index], color: const Color(0xff51b0d5)),
        itemCount: phrases.length,
      ),
    );
  }
}
