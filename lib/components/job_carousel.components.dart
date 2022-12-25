import 'package:flutter/material.dart';
import "package:carousel_slider/carousel_slider.dart";
import 'package:flutterapp/components/item_carousel.components.dart';
import '../models/job.models.dart';

class JobCarousel extends StatelessWidget {
  final List<Job> jobs;
  const JobCarousel({super.key, required this.jobs});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: jobs.map((job) => ItemCarousel(darkTheme: true, job: job)).toList(),
      options: CarouselOptions(
        height: 230,
        enableInfiniteScroll: false,
        reverse: false,
        viewportFraction: .86
      ),
    );
  }
}
