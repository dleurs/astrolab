import 'package:astrolab/model/month.dart';
import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/shared/widget_space.dart';
import 'package:astrolab/ui/shared/widget_text.dart';
import 'package:flutter/material.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({super.key});

  static const initialMonth = Month.juillet;
  static const initialDay = 14;

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  FixedExtentScrollController? controller = FixedExtentScrollController(
    initialItem: DatePickerWidget.initialDay,
  );
  var month = DatePickerWidget.initialMonth;
  var day = DatePickerWidget.initialDay;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 42.0),
            child: WidgetText(
              "Date de naissance :",
              style: context.textTheme.bodyText1,
            ),
          ),
          WidgetSpace.large,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WidgetSpace.large,
              SizedBox(
                height: 120,
                width: 50,
                child: WheelChooser.integer(
                  onValueChanged: (i) {
                    day = i;
                  },
                  controller: controller,
                  minValue: 1,
                  maxValue: month.maxDays,
                  squeeze: 1.4,
                  selectTextStyle: context.textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold),
                  unSelectTextStyle: context.textTheme.bodyText2,
                  step: 1,
                ),
              ),
              WidgetSpace.small,
              SizedBox(
                  height: 120,
                  width: 150,
                  child: WheelChooser(
                    onValueChanged: (strMonth) {
                      setState(() {
                        month = MonthUtils.year.firstWhere((element) => element.value == strMonth);
                        if (day > month.maxDays) {
                          day = month.maxDays;
                          controller!.jumpToItem(day);
                        }
                      });
                    },
                    startPosition: MonthUtils.year.indexOf(DatePickerWidget.initialMonth),
                    squeeze: 1.4,
                    selectTextStyle: context.textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold),
                    unSelectTextStyle: context.textTheme.bodyText2,
                    datas: List.generate(MonthUtils.year.length, (index) => MonthUtils.year[index].value),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
