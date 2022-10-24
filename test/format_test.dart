import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:time_tracker_app/app/home/job_entries/format.dart';

void main() {
  group('hours', () {
    test('positive', () {
      expect(Format.hours(10), '10h');
    });
    test('zero', () {
      expect(Format.hours(0), '0h');
    });
    test('negative', () {
      expect(Format.hours(-5), '0h');
    });
    test('decimal', () {
      expect(Format.hours(4.5), '4.5h');
    });
  });

  group('currency - US locale', (){
    setUp((){
      Intl.defaultLocale = 'en_US';
    });
    test('positive', (){
      expect(Format.currency(10), '\$10');
    });
    test('zero', (){
      expect(Format.currency(0), '');
    });
    test('negative', (){
      expect(Format.currency(-5), '-\$5');
    });
  });
}
