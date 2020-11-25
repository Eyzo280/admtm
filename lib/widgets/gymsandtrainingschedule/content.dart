import 'package:admtm_app/screens/gymsandtrainingschedule.dart';
import 'package:admtm_app/shared/widgets/contentText.dart';
import 'package:admtm_app/widgets/gymsandtrainingschedule/camaraTrainingsSchedule.dart';
import 'package:admtm_app/widgets/gymsandtrainingschedule/franciscoTrainingSchedule.dart';
import 'package:admtm_app/widgets/gymsandtrainingschedule/garoutaTrainingsSchedule.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class GymsAndTrainingContent extends StatelessWidget {
  final Content selectedContent;
  final Size deviceSize;

  GymsAndTrainingContent({
    this.selectedContent,
    this.deviceSize,
  });

  // List contentOneImages
  final contentOneImages = <String>[
    'gym001',
    'gym002',
    'gym003',
  ];

  final contentTwoImages = <String>[
    'gym004',
    'gym005',
    'gym006',
  ];

  Widget oneContent(BuildContext ctx) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 400.0,
              viewportFraction: 0.8,
              autoPlay: true,
              enlargeCenterPage: true,
            ),
            items: contentOneImages.map((String image) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Image.asset(
                      'images/gymsandtrainingschedule/$image.jpg',
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
        SizedBox(
          height: deviceSize.height * 0.025,
        ),
        Container(
          width: double.infinity,
          child: Text(
            'gymsandtrainingschedule_${selectedContent}_title',
            textAlign: TextAlign.left,
            style: Theme.of(ctx).textTheme.headline1,
          ).tr(),
        ),
        ContentText(
          value: 'gymsandtrainingschedule_${selectedContent}_value1',
        ),
        ContentText(
          value: 'gymsandtrainingschedule_${selectedContent}_value2',
        ),
        ContentText(
          value: 'gymsandtrainingschedule_${selectedContent}_value3',
        ),
        Container(
          height: 150,
          child: const Center(
            child: Text('Map'),
          ),
        ),
        CamaraTrainingSchedule(
          deviceSize: deviceSize,
        ),
      ],
    );
  }

  Widget twoContent(BuildContext ctx) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 400.0,
              viewportFraction: 0.8,
              autoPlay: true,
              enlargeCenterPage: true,
            ),
            items: contentTwoImages.map((String image) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Image.asset(
                      'images/gymsandtrainingschedule/$image.jpg',
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
        SizedBox(
          height: deviceSize.height * 0.025,
        ),
        Container(
          width: double.infinity,
          child: Text(
            'gymsandtrainingschedule_${selectedContent}_title',
            textAlign: TextAlign.left,
            style: Theme.of(ctx).textTheme.headline1,
          ).tr(),
        ),
        ContentText(
          value: 'gymsandtrainingschedule_${selectedContent}_value1',
        ),
        ContentText(
          value: 'gymsandtrainingschedule_${selectedContent}_value2',
        ),
        Container(
          height: 150,
          child: const Center(
            child: Text('Map'),
          ),
        ),
        FranciscoTrainingSchedule(
          deviceSize: deviceSize,
        ),
      ],
    );
  }

  Widget threeContent(BuildContext ctx) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          child: Text(
            'gymsandtrainingschedule_${selectedContent}_title',
            textAlign: TextAlign.left,
            style: Theme.of(ctx).textTheme.headline1,
          ).tr(),
        ),
        ContentText(
          value: 'gymsandtrainingschedule_${selectedContent}_value1',
        ),
        ContentText(
          value: 'gymsandtrainingschedule_${selectedContent}_value2',
        ),
        Container(
          height: 150,
          child: const Center(
            child: Text('Map'),
          ),
        ),
        GaroutaTrainingSchedule(
          deviceSize: deviceSize,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          selectedContent == Content.one
              ? oneContent(context)
              : selectedContent == Content.two
                  ? twoContent(context)
                  : threeContent(context)
        ],
      ),
    );
  }
}
