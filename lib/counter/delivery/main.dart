import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mi_bloc/counter/bloc/counter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: BlocProvider(
        create: (_) => CounterBloc(),
        child: BlocConsumer<CounterBloc, CounterState>(
          listener: (BuildContext context, state) {},
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Counter Page'),
                  Text('${state.clicked}'),
                  TextButton(
                    onPressed: () =>
                        context.read<CounterBloc>().add(PlusButtonClicked()),
                    child: const Icon(Icons.plus_one),
                  ),
                  TextButton(
                    onPressed: () =>
                        context.read<CounterBloc>().add(MinusButtonClicked()),
                    child: const Icon(Icons.exposure_minus_1),
                  ),
                  TextButton(
                    onPressed: () =>
                        context.read<CounterBloc>().add(ResetButtonClicked()),
                    child: const Text('Reset'),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
