import 'package:admtm_app/screens/classes.dart';
import 'package:admtm_app/shared/widgets/contentText.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ClassesContent extends StatelessWidget {
  final Content selectedContent;

  ClassesContent({this.selectedContent});

  // List contentOneImages
  final contentOneImages = <String>[
    'mtkidsXace0z',
    'mtkidsXdfa8a',
    'mtkidsX7bbah',
    'mtkidsX3jyb9',
    'mtkidsXtt32a',
    'mtkidsX55afd',
    'mtkidsX67awt',
    'mtkidsX123a4',
    'mtkidsX22opa',
    'mtkidsX452ao',
    'mtkidsX77awf',
  ];

  final contentTwoImages = <String>[
    'mtbegX99afd',
    'mtbegX77ada',
    'mtbegX64ajd',
    'mtbegXnau05',
    'mtbegXhup6a',
    'mtbegX88a9a',
    'mtbegX77afo',
  ];

  final contentThreeImages = <String>[
    'mtadvX99aad',
    'mtadvX7acdd',
    'mtadv753op',
    'mtadvX66a6a',
    'mtadv223aj',
  ];

  Widget oneContent(BuildContext ctx) {
    return Column(
      children: [
        ContentText(
          value: 'classes_${selectedContent}_value1',
        ),
        ContentText(
          value: 'classes_${selectedContent}_value2',
        ),
        Column(
          children: contentOneImages.map((image) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('images/classes/$image.jpg'),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget twoContent(BuildContext ctx) {
    return Column(
      children: [
        ContentText(
          value: 'classes_${selectedContent}_value1',
        ),
        ContentText(
          value: 'classes_${selectedContent}_value2',
        ),
        ContentText(
          value: 'classes_${selectedContent}_value3',
        ),
        Column(
          children: contentTwoImages.map((image) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('images/classes/$image.jpg'),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget threeContent(BuildContext ctx) {
    return Column(
      children: [
        ContentText(
          value: 'classes_${selectedContent}_value1',
        ),
        ContentText(
          value: 'classes_${selectedContent}_value2',
        ),
        ContentText(
          value: 'classes_${selectedContent}_value3',
        ),
        Column(
          children: contentThreeImages.map((image) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('images/classes/$image.jpg'),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget fourContent(BuildContext ctx) {
    return Column(
      children: [
        ContentText(
          value: 'classes_${selectedContent}_value1',
        ),
        ContentText(
          value: 'classes_${selectedContent}_value2',
        ),
      ],
    );
  }

  Widget fiveContent(BuildContext ctx) {
    return Column(
      children: [
        ContentText(
          value: 'classes_${selectedContent}_value1',
        ),
        ContentText(
          value: 'classes_${selectedContent}_value2',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'classes_${selectedContent}_title',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ).tr(),
          selectedContent == Content.one
              ? oneContent(context)
              : selectedContent == Content.two
                  ? twoContent(context)
                  : selectedContent == Content.three
                      ? threeContent(context)
                      : selectedContent == Content.four
                          ? fourContent(context)
                          : fiveContent(context),
        ],
      ),
    );
  }
}
