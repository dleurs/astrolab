import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class SingleCubitWidget<S, T extends Cubit<S>> extends StatelessWidget {
  const SingleCubitWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<T, S>(
      buildWhen: buildWhen,
      builder: (context, state) {
        return renderChild(context, context.read<T>());
      },
      listenWhen: listenWhen,
      listener: (context, state) {
        return listener(context, context.read<T>());
      },
    );
  }

  bool buildWhen(S previous, S current);

  Widget renderChild(BuildContext context, T current);

  bool listenWhen(S previous, S current) => true;

  void listener(BuildContext context, T current) {}
}
