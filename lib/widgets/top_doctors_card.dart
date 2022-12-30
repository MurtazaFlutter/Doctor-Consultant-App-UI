import 'package:doctor_consultant_ui/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../models/doctor.dart';

class TopDoctorsCard extends StatelessWidget {
  final Doctor? doctor;
  const TopDoctorsCard({Key? key, this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        color: Colors.transparent,
        height: 80,
        width: MediaQuery.of(context).size.width - 32,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'assets/images/${doctor!.doctorPicture}',
              child: Container(
                width: 88,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/${doctor!.doctorPicture}'))),
              ),
            ),
            Flexible(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctor!.doctorName,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  '${doctor!.doctorSpecialty}. ${doctor!.doctorHospital}',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.headline5,
                ),
                // const Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 136,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingBar.builder(
                        itemSize: 16,
                        initialRating: double.parse(doctor!.doctorRating),
                        minRating: 1,
                        itemCount: 5,
                        direction: Axis.horizontal,
                        itemPadding: EdgeInsets.zero,
                        itemBuilder: ((context, index) {
                          return const Icon(
                            Icons.star,
                            color: kYellowColor,
                          );
                        }),
                        onRatingUpdate: (rating) {
                          debugPrint(rating.toString());
                        },
                        unratedColor: kGreyColor600,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        (doctor!.doctorNumberOfPatient),
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Container(
                        height: 24,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: doctor!.isOpenClose
                                ? kGreenLightColor
                                : kRedLightColor),
                        child: Text(
                          doctor!.isOpenClose ? 'Open' : 'Close',
                          style:
                              Theme.of(context).textTheme.headline6!.copyWith(
                                    color: doctor!.isOpenClose
                                        ? kGreenColor
                                        : kRedColor,
                                  ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
