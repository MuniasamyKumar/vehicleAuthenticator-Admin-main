import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

calendar(BuildContext context) async {
  final co = CalendarDatePicker2WithActionButtonsConfig(
    dayBorderRadius: BorderRadius.circular(30),
    weekdayLabels: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
    currentDate: DateTime.now(),
    selectedDayHighlightColor: const Color.fromARGB(255, 0, 71, 255),
    dayTextStyle: const TextStyle(
        color: Color.fromARGB(255, 16, 14, 14), fontWeight: FontWeight.w700),
    calendarType: CalendarDatePicker2Type.range,
    closeDialogOnCancelTapped: true,
    firstDayOfWeek: 1,
    weekdayLabelTextStyle: const TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.bold,
    ),
    controlsTextStyle: const TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    centerAlignModePicker: true,
    customModePickerIcon: const SizedBox(),
    selectedDayTextStyle:
        const TextStyle(color: Colors.black, fontWeight: FontWeight.w700)
            .copyWith(color: Colors.white),
    dayBuilder: (
        {required date,
        decoration,
        isDisabled,
        isSelected,
        isToday,
        textStyle}) {
      return Container(
        decoration: BoxDecoration(
          color: isSelected == true
              ? const Color.fromARGB(255, 0, 71, 255)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: isToday == true
                  ? const Color.fromARGB(255, 0, 71, 255)
                  : isSelected == true
                      ? const Color.fromARGB(255, 0, 71, 255)
                      : Colors.white,
              width: .4),
        ),
        child: Center(
            child: Text(date.day.toString(),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: isSelected == true ? Colors.white : Colors.black,
                ))),
      );
    },
    yearBuilder: ({
      required year,
      decoration,
      isCurrentYear,
      isDisabled,
      isSelected,
      textStyle,
    }) {
      return Center(
        child: Container(
          decoration: decoration,
          height: 36,
          width: 72,
          child: Center(
            child: Semantics(
              selected: isSelected,
              button: true,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    year.toString(),
                    style: textStyle,
                  ),
                  if (isCurrentYear == true)
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.only(left: 5),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.redAccent,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
  final value = await showCalendarDatePicker2Dialog(
    context: context,
    config: co,
    dialogSize: const Size(230, 200),
    borderRadius: BorderRadius.circular(15),
    dialogBackgroundColor: Colors.white,
  );
  return value;
}
