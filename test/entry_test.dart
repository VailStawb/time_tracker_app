import 'package:flutter_test/flutter_test.dart';
import 'package:time_tracker_app/app/home/models/entry.dart';

void main() {
  final entry = Entry(
    id: 'abc',
    jobId: 'abc',
    start: DateTime(2020, 5, 12, 15),
    end: DateTime(2020, 5, 13, 16),
    comment: 'Programming time',
  );
  group('fromMap', () {
    test('null data', () {
      final entry = Entry.fromMap(null, 'abc');
      expect(entry, null);
    });
    test('start', () {
      final entry = Entry.fromMap({
        'start': 10,
        'end': 15,
        'jobId': 'abc',
        'comment': 'la la',
      }, 'abc');
      expect(entry.start.millisecondsSinceEpoch, 10);
      expect(entry.end.millisecondsSinceEpoch, 15);
      expect(entry.jobId, 'abc');
      expect(entry.comment, 'la la');
      expect(entry.id, 'abc');
    });
  });

  group('durationInHours', () {
    test('durationInHours', () {
      expect(entry.durationInHours, 25.0);
    });
  });

  test('toMap', () {
    expect(entry.toMap(), {
      'jobId': 'abc',
      'start': DateTime(2020, 5, 12, 15).millisecondsSinceEpoch,
      'end': DateTime(2020, 5, 13, 16).millisecondsSinceEpoch,
      'comment': 'Programming time',
    });
  });
}
