import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../data/models/home.dart';
import 'package:cached_network_image/cached_network_image.dart';


class homeSlider extends StatefulWidget {
  final HomeEntity homeEntity;
  const homeSlider(this.homeEntity, {super.key});

  @override
  State<homeSlider> createState() => _homeSliderState();
}

class _homeSliderState extends State<homeSlider> {
  int currentSliderIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  currentSliderIndex = index;
                });
              },
              height: 160.0,
              viewportFraction: 1,
              enlargeCenterPage: true,
              autoPlay: true),
          items: widget.homeEntity.slides!.map((i) {
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
        Positioned(
          bottom:12 ,
          child: AnimatedSmoothIndicator(
            activeIndex: currentSliderIndex ,
             count: widget.homeEntity.slides!.length,
             effect: ExpandingDotsEffect(
              dotHeight: 5,
             dotWidth: 6,
             activeDotColor: Colors.blue,
             dotColor: Colors.grey.shade100,
             ),),
        ),
      ],
    );
  }
}
