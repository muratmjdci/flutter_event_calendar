import 'package:flutter_event_calendar/flutter_event_calendar.dart';
import 'package:flutter_event_calendar/src/handlers/event_calendar.dart';
import 'package:flutter_event_calendar/src/utils/calendar_types.dart';
import 'translator.dart';

class CalendarUtils {
  goToYear(index) {
    EventCalendar.dateTime = EventCalendar.calendarProvider.goToYear(index);
  }

  goToMonth(index) {
    EventCalendar.dateTime = EventCalendar.calendarProvider.goToMonth(index);
  }

  goToDay(index) {
    EventCalendar.dateTime = EventCalendar.calendarProvider.goToDay(index);
  }

  nextDay() {
    EventCalendar.dateTime =
        EventCalendar.calendarProvider.getNextDayDateTime();
  }

  previousDay() {
    EventCalendar.dateTime =
        EventCalendar.calendarProvider.getPreviousDayDateTime();
  }

  nextMonth() {
    EventCalendar.dateTime =
        EventCalendar.calendarProvider.getNextMonthDateTime();
  }

  previousMonth() {
    EventCalendar.dateTime =
        EventCalendar.calendarProvider.getPreviousMonthDateTime();
  }

  List getYears() => EventCalendar.calendarProvider.getYears();

  Map getDays(int monthIndex) => EventCalendar.calendarProvider.getMonthDays(monthIndex);

  Map getMonthDaysShort(int monthIndex) => EventCalendar.calendarProvider.getMonthDaysShort(monthIndex);


  getPart({required PartFormat format, required String responseType}) {
    if (responseType == 'int') {
      return EventCalendar.calendarProvider.getDateTimePart(format);
    } else {
      return Translator.getPartTranslate(
          format, EventCalendar.calendarProvider.getDateTimePart(format) - 1);
    }
  }
}
