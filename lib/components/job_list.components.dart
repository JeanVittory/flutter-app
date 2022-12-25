import 'package:flutter/material.dart';
import "../models/job.models.dart";
import "../components/item_job_list.components.dart";

class JobList extends StatelessWidget {
  final List<Job> jobs;

  const JobList({Key? key, required this.jobs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: jobs.length,
      itemBuilder: ((context, index) {
        return ItemJobList(jobs: jobs[index],);
      }),
    );
  }
}
