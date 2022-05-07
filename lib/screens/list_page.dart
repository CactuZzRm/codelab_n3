import 'package:codelab_n3/models/attraction.dart';
import 'package:codelab_n3/variables/att_list.dart';
import 'package:codelab_n3/variables/colors.dart';
import 'package:codelab_n3/widgets/att_card.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_bar_widget.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        title: const Icon(Icons.pool, color: Colors.white),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const Icon(Icons.notification_add),
            color: Colors.white,
          )
        ],
      ),
      backgroundColor: mainThemeColor,
      body: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: attractionsList.length,
                  itemBuilder: (context, index) {
                    Attraction attr = attractionsList[index];
                    return AttractionCard(
                      attraction: attr,
                    );
                  },
                ),
              ),
              BottomBarWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
