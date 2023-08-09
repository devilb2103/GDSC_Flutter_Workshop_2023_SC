import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterInitialState());

  int counter = 0;

  void incrementCounter() {
    emit(const CounterUpdatingState());
    counter++;
    print(counter);
    emit(const CounterInitialState());
  }

  void decrementCounter() {
    if (counter < 1) {
      return;
    }
    emit(const CounterUpdatingState());
    counter--;
    print(counter);
    emit(const CounterInitialState());
  }

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
