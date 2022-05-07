import 'package:codelab_n3/variables/bottom_bar_list.dart';
import 'package:codelab_n3/variables/colors.dart';
import 'package:flutter/material.dart';

import '../models/bottom_bar_item.dart';

class BottomBarWidget extends StatefulWidget {
  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  List<BottomBarItem> barItems = barItemsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          barItems.length,
          (index) {
            var barItem = barItems[index];

            return GestureDetector(
              onTap: () {
                setState(
                  () {
                    barItems.forEach(
                      (element) {
                        element.isSelected = barItem == element;
                      },
                    );
                  },
                );
              },
              child: Column(
                children: [
                  Icon(barItem.icon,
                      color: barItem.isSelected ? mainThemeColor : Colors.grey),
                  Text(
                    barItem.label,
                    style: TextStyle(
                      color:
                          (barItem.isSelected ? mainThemeColor : Colors.grey),
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
