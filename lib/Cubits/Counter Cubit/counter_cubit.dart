import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterInitialState());

  // storing counter
  int counter = 0;

  // increment counter and change state so the counter widget refreshes
  // with the updated value of the counter variable
  void incrementCounter() {
    emit(const CounterUpdatingState());
    counter++;
    print(counter);
    emit(const CounterInitialState());
  }

  // decrement counter and change state so the counter widget refreshes
  // with the updated value of the counter variable
  void decrementCounter() {
    if (counter < 1) {
      return;
    }
    emit(const CounterUpdatingState());
    counter--;
    print(counter);
    emit(const CounterInitialState());
  }

  // reset counter and change state so the counter widget refreshes
  // with the updated value of the counter variable
  void resetCounter() {
    if (counter <= 0) {
      return;
    }
    emit(const CounterUpdatingState());
    counter = 0;
    print(counter);
    emit(const CounterInitialState());
  }
}
