import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shik_poush/data/models/home.dart';
import 'package:shik_poush/screens/home/bloc/home_bloc.dart';
import 'package:shik_poush/screens/home/widgets/home_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HoomeScreen extends StatefulWidget {
  const HoomeScreen({super.key});

  @override
  State<HoomeScreen> createState() => _HoomeScreenState();
}

class _HoomeScreenState extends State<HoomeScreen> {
  @override
  void initState() {
    BlocProvider.of<HomeBloc>(context).add(HomeScreenStarted());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.nightlight_round_outlined),
            SizedBox(
              width: 8.0,
            ),
            Text("شیک پوش"),
          ],
        ),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is SuccessState) {
            return SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 50),
              child: Column(
                children: [
                  homeSlider(state.homeEntity),
                ],
              ),
            );
          } else if (state is ErrorState) {
            return Center(
              child: Text(state.error),
            );
          } else {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
        },
      ),
    );
  }
}
