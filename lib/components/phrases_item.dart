import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/item_model.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({Key? key, required this.item, required this.color}) : super(key: key);
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
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Text(
                  '${item.jbName}',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16.0
                  ),
                ),
                Text(
                  '${item.enName}',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
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
