class Task {
  int id;
  String title;
  bool status;

  Task(this.id, this.title, this.status);
}

class MockTask {
  MockTask._();

  static List<Task> mockTasks = [
    Task(1, 'Iguanas were falling out of the trees.', false),
    Task(2, 'My uncle\'s favorite pastime was building cars out of noodles.',
        false),
    Task(
        3,
        'It was always dangerous to drive with him since he insisted the safety cones were a slalom course.',
        true),
    Task(4, 'The gloves protect my feet from excess work.', false),
    Task(5, 'Tuesdays are free if you bring a gnome costume.', true),
    Task(
        6,
        'I would have gotten the promotion, but my attendance wasn’t good enough.',
        false),
    Task(
        7,
        'The drainage pipe allowed the wildlife to cross the highway without worrying about cars.',
        true),
    Task(8, 'UHaul trucks bring back bad memories for us.', false),
    Task(
        9,
        'All she wanted was the answer, but she had no idea how much she would hate it.',
        false),
    Task(
        10,
        'Most shark attacks occur about 10 feet from the beach since that\'s where the people are.',
        true),
    Task(11, 'I like to leave work after my eight-hour tea-break.', false),
    Task(
        12,
        'Imagine his surprise when he discovered that the safe was full of pudding.',
        false),
    Task(
        13,
        'Many perceived speed limit signs as suggestions not laws to be obeyed.',
        true),
    Task(
        14,
        'It isn\'t difficult to do a handstand if you just stand on your hands.',
        false),
    Task(15, 'Garlic ice-cream was her favorite.', true),
    Task(
        16,
        'Jason lived his life by the motto, \"Anything worth doing is worth doing poorly.',
        false),
    Task(
        17,
        'As the asteroid hurtled toward earth, Becky was upset her dentist appointment had been canceled.',
        true),
    Task(
        18,
        'A song can make or ruin a person’s day if they let it get to them.',
        true),
  ];
}
