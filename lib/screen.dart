import 'package:bloc_counter/logic/counter_bloc/counter_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'logic/counter_cubit/counter_cubit.dart';

class ScreenCounter extends StatelessWidget {
  const ScreenCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // BlocBuilder<CounterCubit, CounterState>(
        BlocBuilder<CounterBlocBloc, CounterBlocState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.counterValue.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  // context.read<CounterCubit>().increment();
                  context.read<CounterBlocBloc>().add(Increment());
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(
                width: 10,
              ),
              FloatingActionButton(
                onPressed: () {
                  // context.read<CounterCubit>().decrement();
                  context.read<CounterBlocBloc>().add(Decrement());
                },
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        );
      },
    );
  }
}
