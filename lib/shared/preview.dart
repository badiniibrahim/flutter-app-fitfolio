import 'package:fitfolio/core/utilies/colors.style.dart';
import 'package:fitfolio/core/utilies/theme.dart';
import 'package:fitfolio/shared/instructions.dart';
import 'package:fitfolio/shared/item_title.dart';
import 'package:flutter/material.dart';
import 'checks.dart' as utils;

class Preview extends StatelessWidget {
  final dynamic resource;

  const Preview({
    super.key,
    required this.resource,
  });

  @override
  Widget build(BuildContext context) {
    List<String> secondaryMuscles = (resource['secondaryMuscles'] as List)
        .map((dynamic item) => item.toString().toUpperCase())
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          resource['name'].toString().toUpperCase(),
          style: AppTheme.lightAppBarTheme.titleTextStyle!.copyWith(
            color: AppColors.black2,
            fontFamily: 'muli',
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 300.0,
                width: 300.0,
                child: Image.network(resource['gifUrl']),
              ),
            ),

            /// instructions
            if (utils.isNotNullOrBlank(resource['instructions']))
              InstructionsWidget(instructions: resource['instructions']),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: ItemTitleWidget(
                title: 'Secondary Muscles',
              ),
            ),
            Row(
              children: List<Widget>.generate(
                secondaryMuscles.length,
                (int idx) {
                  return ActionChip(
                    label: Text(secondaryMuscles[idx]),
                    elevation: 8.0,
                    backgroundColor: Colors.grey[200],
                    shape: const StadiumBorder(
                      side: BorderSide(
                        width: 1,
                        color: Colors.redAccent,
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
