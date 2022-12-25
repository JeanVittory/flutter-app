import 'package:flutter/material.dart';
import "../models/job.models.dart";

class ItemCarousel extends StatefulWidget {
  final bool darkTheme;
  final Job job;
  const ItemCarousel({super.key, required this.darkTheme, required this.job});

  @override
  State<ItemCarousel> createState() => _ItemCarouselState();
}

class _ItemCarouselState extends State<ItemCarousel> {  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, bottom: 20, top: 20),
      child: Container(
        decoration: _boxDecoration(context),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_companyLogo(), _favIcon()],
              ),
              _infoJob(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoJob(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.job.company.name,
          style: TextStyle(
              fontSize: 15,
              color: widget.darkTheme ? const Color(0xFFB7B7D2) : Colors.grey),
        ),
        Text(
          widget.job.role,
          style: widget.darkTheme
              ? Theme.of(context).textTheme.headline3
              : Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(
          height: 3.0,
        ),
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: widget.darkTheme
                  ? Theme.of(context).highlightColor
                  : Colors.grey,
              size: 15.0,
            ),
            const SizedBox(width: 5.0),
            Text(widget.job.location,
                style: TextStyle(
                    fontSize: 15.0,
                    color: widget.darkTheme
                        ? const Color(0xFFB7B7D2)
                        : Colors.grey))
          ],
        )
      ],
    );
  }

  Widget _favIcon() {
    return GestureDetector(
      onTap: () {
        setState(() => widget.job.favorite = !widget.job.favorite );
      },
      child: Icon(
        widget.job.favorite ? Icons.favorite : Icons.favorite_border,
        color: widget.darkTheme ? Colors.white : Colors.grey,
      ),
    );
  }

  BoxDecoration _boxDecoration(context) {
    return BoxDecoration(
        color: widget.darkTheme ? Theme.of(context).primaryColor : Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(color: Colors.black45, offset: Offset(4, 4), blurRadius: 10)
        ]);
  }

  Widget _companyLogo() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          widget.job.company.urlLogo,
          width: 60,
        ),
      ),
    );
  }
}
