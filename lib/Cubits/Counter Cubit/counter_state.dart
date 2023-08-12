part of 'counter_cubit.dart';

// abstract classes representing states of the counter cubit
abstract class CounterState {
  const CounterState();
}

class CounterUpdatingState extends CounterState {
  const CounterUpdatingState();
}

class CounterInitialState extends CounterState {
  const CounterInitialState();
}
