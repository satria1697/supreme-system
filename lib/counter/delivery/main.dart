import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mi_bloc/counter/bloc/counter_bloc.dart';
import 'package:mi_bloc/layout/main.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Counter',
      body: BlocProvider(
        create: (_) => CounterBloc(),
        child: BlocConsumer<CounterBloc, CounterState>(
          listener: (BuildContext context, state) {},
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${state.clicked}',
                    style: const TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () => context
                            .read<CounterBloc>()
                            .add(PlusButtonClicked()),
                        child: const Icon(Icons.plus_one),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      TextButton(
                        onPressed: () => context
                            .read<CounterBloc>()
                            .add(MinusButtonClicked()),
                        child: const Icon(Icons.exposure_minus_1),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
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
