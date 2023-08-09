import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterUpdateState());

  int counter = 0;

  void incrementCounter() {
    counter++;
    print(counter);
    emit(const CounterUpdateState());
  }

  void decrementCounter() {
    counter--;
    print(counter);
    emit(const CounterUpdateState());
  }

  void resetCounter() {
    counter = 0;
    print(counter);
    emit(const CounterUpdateState());
  }
}
