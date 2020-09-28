import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final PageController controller;
  final int page;

  DrawerTile(this.icon, this.text, this.controller, this.page);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.of(context).pop();
          controller.jumpToPage(page);
        },
        child: Container(
          padding: EdgeInsets.only(left: 16.0),
          height: 60.0,
          child: Row(
            children: [
              Icon(
                icon,
                color: controller.page.round() == page ? 
                  Theme.of(context).primaryColor : Colors.grey[500],
              ),
              SizedBox(width: 20.0),
              Text(
                text,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: controller.page.round() == page ? 
                    FontWeight.bold : FontWeight.normal,
                  color: controller.page == page ? 
                  Theme.of(context).primaryColor : Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
