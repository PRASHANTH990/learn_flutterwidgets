import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState.inital());

  void increment() {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void Decrement() {
    emit(state.copyWith(counter: state.counter - 1));
  }
}
