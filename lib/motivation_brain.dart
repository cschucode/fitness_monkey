import 'dart:math';

class MotivationBrain {
  final _addictionSlogans = [
    'One Day at a Time!',
    'Do the Next Right Thing!',
    'Principles Before Personalities!'
  ];

  final _fitnessSlogans = [
    'Buff Your Monkey!',
    'Get You Some!',
    'Time to Get Paid!',
  ];

  final _communitySlogans = [
    'It Takes a Village!',
    'No One is an Island!',
    'Come Together!',
  ];

  String getAddictionSlogan() {
    return _addictionSlogans[Random().nextInt(3)];
  }

  String getFitnessSlogan() {
    return _fitnessSlogans[Random().nextInt(3)];
  }

  String getCommunitySlogan() {
    return _communitySlogans[Random().nextInt(3)];
  }
}
