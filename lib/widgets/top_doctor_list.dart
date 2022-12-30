import 'package:doctor_consultant_ui/models/doctor.dart';
import 'package:flutter/material.dart';
import 'top_doctors_card.dart';

class TopDoctorList extends StatelessWidget {
  const TopDoctorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: topDoctors.length,
        itemBuilder: ((context, index) {
          return GestureDetector(
            onTap: (() {
              Navigator.pushNamed(context, '/doctor_detail',
                  arguments: Doctor(
                      doctorName: topDoctors[index].doctorName,
                      doctorDescription: topDoctors[index].doctorDescription,
                      doctorHospital: topDoctors[index].doctorHospital,
                      doctorPicture: topDoctors[index].doctorPicture,
                      doctorNumberOfPatient:
                          topDoctors[index].doctorNumberOfPatient,
                      isOpenClose: topDoctors[index].isOpenClose,
                      doctorRating: topDoctors[index].doctorRating,
                      doctorSpecialty: topDoctors[index].doctorSpecialty,
                      doctorYearOfExperience:
                          topDoctors[index].doctorYearOfExperience));
            }),
            child: TopDoctorsCard(
              doctor: topDoctors[index],
            ),
          );
        }));
  }
}
