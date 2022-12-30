import 'package:doctor_consultant_ui/models/doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class DoctorAppGridView extends StatelessWidget {
  const DoctorAppGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: doctorMenu.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 8, // To add space in between of CrossAxisCount
        ),
        padding: EdgeInsets.zero,
        itemBuilder: ((context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              constraints: const BoxConstraints(
                maxHeight: 81,
              ),
              child: Column(
                children: [
                  Container(
                    constraints: const BoxConstraints(
                      maxHeight: 56,
                      minHeight: 56,
                      minWidth: 69,
                      maxWidth: 69,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Svg(
                              'assets/svg/${doctorMenu[index].image}',
                            ))),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Expanded(
                      child: Text(
                    doctorMenu[index].name,
                    style: Theme.of(context).textTheme.headline6,
                  )),
                ],
              ),
            ),
          );
        }));
  }
}
