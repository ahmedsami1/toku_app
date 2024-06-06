import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/item_model.dart';


class Item extends StatelessWidget {
  const Item({Key? key, required this.item, required this.color}) : super(key: key);
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 100.0,
      color:  color,
      child: Row(
        children:
        [
         Container(
            color: const Color(0xfffff4d9),
            child: Image.asset(
              '${item.image}',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Text(
                  '${item.jbName}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0
                  ),
                ),
                Text(
                  '${item.enName}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              splashColor: Colors.white,
                onPressed: ()
                {
                  item.playSound();
                },
                icon: const Icon(
                  Icons.play_arrow_rounded,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
