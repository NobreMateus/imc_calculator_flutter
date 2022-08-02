class ImcCalculatorEvent {}

class ImcCalculateEvent extends ImcCalculatorEvent {
  ImcCalculateEvent({required this.height, required this.weight});

  double weight;
  double height;
}
