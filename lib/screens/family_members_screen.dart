import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import '../models/item_model.dart';

class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({Key? key}) : super(key: key);


  final List<ItemModel> family = const
  [
    ItemModel(
        sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        jbName: 'Chichioya',
        enName: 'Father'
    ),
    ItemModel(
        sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jbName: 'Musume',
        enName: 'Daughter'
    ),
    ItemModel(
        sound: 'sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jbName: 'Ojiisan',
        enName: 'Grand father'
    ),
    ItemModel(
        sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jbName: 'Hahaoya',
        enName: 'Mother'
    ),
    ItemModel(
        sound: 'sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jbName: 'Saboo',
        enName: 'Grand mother'
    ),
    ItemModel(
        sound: 'sounds/family_members/older brother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jbName: 'Nisan',
        enName: 'Older brother'
    ),
    ItemModel(
        sound: 'sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jbName: 'Ane',
        enName: 'Older sister'
    ),
    ItemModel(
        sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jbName: 'Musuko',
        enName: 'Son'
    ),
    ItemModel(
        sound: 'sounds/family_members/younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jbName: 'Otouto',
        enName: 'Younger brother'
    ),
    ItemModel(
        sound: 'sounds/family_members/younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jbName: 'Imouto',
        enName: 'Younger sister'
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
          'FamilyMembers',
          style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
      body:  ListView.builder(
        itemBuilder: (context, index) => Item(item: family[index], color: const Color(0xff59973c)),
        itemCount: family.length,
      ),
    );
  }
}
