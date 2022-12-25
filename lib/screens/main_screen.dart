import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterapp/components/job_list.components.dart';
import "../components/job_carousel.components.dart";
import "../models/job.models.dart";
import "../models/company.models.dart";

class MainScreen extends StatelessWidget {
  final List<Job> jobs = [
    Job(
      role: 'Product Designer',
      location: 'San Francisco, CA',
      company: Company(
        name: 'Google',
        urlLogo:
            'https://images.theconversation.com/files/93616/original/image-20150902-6700-t2axrz.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1000&fit=clip',
      ),
    ),
    Job(
      role: 'Frontend Web',
      location: 'Miami',
      company: Company(
        name: 'Netflix',
        urlLogo:
            'https://i.pinimg.com/originals/8c/74/0b/8c740bc13bd5a0a19c24d28dff98cbdd.png',
      ),
    ),
    Job(
      role: 'Mobile Developer',
      location: 'New York',
      company: Company(
          name: 'Amazon',
          urlLogo:
              "https://policyviz.com/wp-content/uploads/2020/12/amazon-logo-square-285x300.jpg"),
    ),
  ];
  final List<Job> recentJobs =[
    Job(
      role: 'UX Enginner',
      location: 'Mountain View, CA',
      company: Company(
        name: 'Apple',
        urlLogo:
            'https://i.pinimg.com/originals/1c/aa/03/1caa032c47f63d50902b9d34492e1303.jpg',
      ),
      favorite: true,
    ),
    Job(
      role: 'Motion Designer',
      location: 'New York, NY',
      company: Company(
        name: 'AirBnb',
        urlLogo:
            'https://menorcaaldia.com/wp-content/uploads/2018/02/air.jpg',
      ),
      favorite: true,
    ),
    Job(
      role: 'Python Developer',
      location: 'Bogotá, COL',
      company: Company(
        name: 'Amazon',
        urlLogo:
           "https://policyviz.com/wp-content/uploads/2020/12/amazon-logo-square-285x300.jpg",
      ),
    ),
  ];
  
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            _customAppBar(),
            _textsHeaders(context),
            _forYou(context),
            _recentsJobs(context),
            const SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }

  Widget _customAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/slider.svg"),
            onPressed: () => {},
          ),
          Row(
            children: [
              IconButton(
                icon: SvgPicture.asset("assets/icons/search.svg"),
                onPressed: () => {},
              ),
              IconButton(
                icon: SvgPicture.asset("assets/icons/settings.svg"),
                onPressed: () => {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _textsHeaders(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi Jade",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            "find your next",
            style: Theme.of(context).textTheme.headline1,
          ),
          Text("design job", style: Theme.of(context).textTheme.headline2)
        ],
      ),
    );
  }

  Widget _forYou(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text("For you", style: Theme.of(context).textTheme.bodyText1),
        ),
        JobCarousel(
          jobs: jobs,
        )
      ],
    );
  }

  Widget _recentsJobs(context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                "See All",
                style: Theme.of(context).textTheme.bodyText2,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: JobList(jobs: recentJobs),
        )
      ],
    );
  }
}
