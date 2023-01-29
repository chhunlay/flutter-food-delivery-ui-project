import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _SearchButtonAppbar extends StatelessWidget {
  const _SearchButtonAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 290,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36),
            color: Colors.grey[200],
          ),
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text('Search'),
              Spacer(),
              Icon(Icons.search),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
        Spacer(),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color:
              Theme.of(context).primaryColor.withOpacity(0.1)),
          margin: EdgeInsets.all(7),
          child: IconButton(
            icon: Icon(
              Icons.filter_list,
              color: Colors.red,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}