import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomeScreenNavBar extends StatelessWidget {
  const HomeScreenNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: Svg(
            'assets/svg/icon-burger.svg',
            size: Size(24, 24),
          ))),
        ),
        const SizedBox(
          width: 36,
          height: 36,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://th.bing.com/th/id/OIP.OQiM80V2FKIlffoYKbiangAAAA?w=206&h=206&c=7&r=0&o=5&pid=1.7',
            ),
          ),
        )
      ],
    );
  }
}
