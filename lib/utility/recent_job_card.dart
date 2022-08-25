import 'package:flutter/material.dart';

class recentJobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logoImgPath;
  final int hourlyRate;

  const recentJobCard({Key? key,
    required this.companyName,
    required this.jobTitle,
    required this.logoImgPath,
    required this.hourlyRate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        height: 100.0,
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    color: Colors.grey[300],
                    height: 40.0,
                    child: Image.asset(logoImgPath),
                  ),
                ),
                SizedBox(width: 10.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(jobTitle,style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 4.0,),
                    Text(companyName,style: TextStyle(
                        color: Colors.grey[600]
                    ),),
                  ],
                ),
              ],
            ),
            Text("\$" +hourlyRate.toString() + "/hr"),
          ],
        ),
      ),
    );
  }
}
