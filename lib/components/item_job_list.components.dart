import 'package:flutter/material.dart';
import "../models/job.models.dart";

class ItemJobList extends StatelessWidget {
  final Job jobs;
  const ItemJobList({Key? key, required this.jobs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7.0),
      child: Container(
        decoration: _boxDecoration(),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _companyLogo(), 
                _infoRecentJobs(context),
              ],
            ), 
            _favIcon(context)
          ],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Colors.black26, offset: Offset(2.0, 2.0), blurRadius: 8.0)
        ]);
  }

  Widget _companyLogo() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Image.network(jobs.company.urlLogo),
    );
  }

  Widget _infoRecentJobs(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(jobs.company.name, style: Theme.of(context).textTheme.subtitle1),
        Text(jobs.role, style: Theme.of(context).textTheme.headline4),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: Theme.of(context).highlightColor,
              size: 14,
            ),
            const SizedBox(width: 3),
            Text(jobs.location,
                style:
                    const TextStyle(fontSize: 14.0, color: Color(0XFFB7B7D2)))
          ],
        )
      ],
    );
  }

  Widget _favIcon(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10),
      child: Icon(Icons.favorite_border, color: Theme.of(context).highlightColor,),
    );
  }
}
