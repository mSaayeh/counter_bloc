import 'package:bloc_counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FloatingActionButtons extends StatelessWidget {
  const FloatingActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () => BlocProvider.of<CounterBloc>(context)
              .add(IncrementCounterEvent()),
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 12),
        FloatingActionButton.small(
          onPressed: () =>
              BlocProvider.of<CounterBloc>(context).add(ResetCounterEvent()),
          child: const Icon(Icons.exposure_zero),
        ),
        const SizedBox(height: 12),
        FloatingActionButton(
          onPressed: () => BlocProvider.of<CounterBloc>(context)
              .add(DecrementCounterEvent()),
          child: const Icon(Icons.remove),
        )
      ],
    );
  }
}
