import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shik_poush/screens/home/bloc/home_bloc.dart';
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
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 160.0,
                        viewportFraction: 1,
                        enlargeCenterPage: true,
                        autoPlay: true),
                    items: state.homeEntity.slides!.map((i) {
                      return ClipRRect(
                        borderRadius: BorderRadiusDirectional.circular(12),
                        child: CachedNetworkImage(
                          imageUrl: "https://flutter.vesam24.com/${i.image}",
                          fit: BoxFit.fill,
                          placeholder: (context, url) => const Center(
                            child: CupertinoActivityIndicator(),
                          ),
                          errorWidget: (context, url, error) => const Center(
                            child: Icon(Icons.error),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
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
