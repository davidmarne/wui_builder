import 'dart:html';

typedef double TestTimeRemaining();

class TestIdleDeadline implements IdleDeadline {
  TestTimeRemaining testTimeRemaining;

  TestIdleDeadline(this.testTimeRemaining);

  @override
  double timeRemaining() => testTimeRemaining();

  @override
  bool get didTimeout => false;
}

IdleDeadline aliveIdleDeadline() {
  final test = new TestIdleDeadline(() => 2.0);
  return test;
}

IdleDeadline completeIdleDeadline() {
  final test = new TestIdleDeadline(() => 0.1);
  return test;
}

IdleDeadline completeAfterIdleDeadline(int after) {
  int count = 0;
  final test = new TestIdleDeadline(() {
    count++;
    return after >= count ? 2.0 : .1;
  });
  return test;
}
