import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../cubit/appCubit.dart';
import '../cubit/appStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => AppCubit(),
        child: BlocConsumer<AppCubit, AppStates>(
          listener: (context, state) {},
          builder: (context, state) {
            var app = AppCubit.get(context);
            return GestureDetector(
              onTap: () {
                app.change();
              },
              child: Scaffold(
                backgroundColor: app.color,
                body: const Center(
                    child: Text(
                  'Hey There',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            );
          },
        ));
  }
}
