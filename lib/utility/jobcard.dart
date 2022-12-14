import 'package:flutter/material.dart';

class jobcard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logoImgPath;
  final int hourlyRate;

  const jobcard({Key? key,
    required this.companyName,
    required this.jobTitle,
    required this.logoImgPath,
    required this.hourlyRate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          width: 200.0,
          color: Colors.grey[200],
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60.0,
                    child: Image.asset(logoImgPath),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      color: Colors.grey[500],
                      child: Text('Part Time',style: TextStyle(
                        color: Colors.white,

                      ),),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(jobTitle,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),),
              ),
              Text("\$" +hourlyRate.toString() + "/hr"),
            ],
          ),
        ),
      ),
    );
  }
}
