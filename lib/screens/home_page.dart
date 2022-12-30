import 'package:doctor_consultant_ui/constants/constants.dart';
import 'package:flutter/material.dart';
import '../widgets/doctor_app_gridview.dart';
import '../widgets/home_screen_nav_bar.dart';
import '../widgets/top_doctor_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeScreenNavBar(),
              RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.headline1,
                      children: [
                    const TextSpan(text: 'Find'),
                    TextSpan(
                        text: ' your Doctor',
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                              color: kGreyColor900,
                            ))
                  ])),
              const SizedBox(
                height: 24,
              ),
              Container(
                height: 56,
                padding: const EdgeInsets.only(
                  right: 8,
                  left: 16,
                  bottom: 5,
                  top: 6,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: kGreyColor500),
                child: TextField(
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: kBlackColor900),
                  cursorHeight: 24,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.search,
                      color: kBlackColor900,
                    ),
                    suffixIconConstraints: const BoxConstraints(
                      maxHeight: 24,
                    ),
                    hintText: 'Search Doctor, Medicine etc',
                    hintStyle: Theme.of(context).textTheme.headline5,
                    contentPadding: const EdgeInsets.only(bottom: 5),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const DoctorAppGridView(),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Doctors',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    'View All',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: kBlueColor),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const TopDoctorList(),
            ],
          ),
        ),
      )),
    );
  }
}
