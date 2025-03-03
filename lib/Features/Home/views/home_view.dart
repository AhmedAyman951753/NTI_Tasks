import 'package:flutter/material.dart';
import 'package:flutter_application/Features/Home/manager/home_cubit.dart';
import 'package:flutter_application/Features/Home/manager/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HomeCubit(),
        child: Scaffold(
          appBar: AppBar(
            title: Text("Cubit Test"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  BlocConsumer<HomeCubit, HomeState>(
                      builder: (context, state)
                      {
                        return Switch(
                            value: HomeCubit.get(context).changeSwitch,
                            onChanged: HomeCubit.get(context).onChangeSwitch);
                      }
                      , listener: (context, state){}),
                  BlocConsumer<HomeCubit, HomeState>(
                      builder: (context, state)
                      {
                        return Checkbox(
                            value: HomeCubit.get(context).changeCheckbox,
                            onChanged: HomeCubit.get(context).onChangeCheckbox);
                      }
                      , listener: (context, state){})
                ],
              ),
            ),
          ),
        ),
    );
  }
}
