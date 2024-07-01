import 'package:bloc_counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/floating_action_buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter",
          style: GoogleFonts.almarai(fontSize: 26),
        ),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Text(
              (state is CounterValueChanged) ? state.counter.toString() : "0",
              style: GoogleFonts.almarai(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            );
          },
        ),
      ),
      floatingActionButton: const FloatingActionButtons(),
    );
  }
}
