import 'package:flutter/material.dart';
import 'package:toku/screens/numbers_screen.dart';
import 'package:toku/screens/phrases_screen.dart';
import '../components/category_item.dart';
import 'colors_screen.dart';
import 'family_members_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff4d9),
      appBar: AppBar(
        backgroundColor:  const Color(0xff49332a),
        title: const Text(
            'Toku',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body:  Column(
        children:
        [
          Category(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                  builder: (context)=> const MemberScreen()
              ));
            },
            name: 'Member',
            color: const Color(0xffEF9235),
          ),
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const FamilyMembersScreen()
                ),
              );
            },
            name: 'FamilyMember',
            color: const Color(0xff5c893e),
          ),
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const ColorsScreen()
              ));
            },
            name: 'Colors',
            color: const Color(0xff854cae),
          ),
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const PhrasesScreen()
              ));
            },
            name: 'Phrases',
            color: const Color(0xff51b0d5),
          ),
        ],
      ),
    );
  }
}



