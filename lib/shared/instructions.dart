import 'package:fitfolio/core/utilies/colors.style.dart';
import 'package:fitfolio/core/utilies/texts.style.dart';
import 'package:fitfolio/shared/item_title.dart';
import 'package:flutter/material.dart';

class InstructionsWidget extends StatelessWidget {
  const InstructionsWidget({Key? key, required this.instructions})
      : super(key: key);

  final List<dynamic> instructions;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: ItemTitleWidget(
            title: 'Instructions',
          ),
        ),
        ...instructions.map((value) => _buildItem(value, context)).toList(),
      ],
    );
  }

  Widget _buildItem(String instructions, BuildContext context) {
    var screenSize = MediaQuery.of(context).size.width / 0.3;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: screenSize,
        child: Text(
          instructions,
          style: IText.text1.copyWith(
            color: AppColors.black2,
            fontFamily: 'muli',
          ),
        ),
      ),
    );
  }
}
