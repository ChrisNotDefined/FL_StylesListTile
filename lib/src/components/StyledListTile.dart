import 'package:flutter/material.dart';

class StyledListTile extends StatelessWidget {
  final title;
  final description;
  final trailing;
  final leading;
  final onTap;

  StyledListTile(
      {this.title, this.description, this.leading, this.trailing, this.onTap});

  final _titleTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Material(
              color: Colors.redAccent,
              child: InkWell(
                onTap: onTap,
                splashColor: Colors.pink,
                child: ListTile(
                  title: Text(this.title, style: _titleTextStyle),
                  subtitle: Text(this.description,
                      style: TextStyle(color: Colors.white)),
                  leading: Column(
                    children: [
                      Icon(
                        this.leading,
                        color: Colors.white,
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  trailing: Icon(this.trailing, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
