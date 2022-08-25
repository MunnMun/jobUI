import 'package:career_design/utility/recent_job_card.dart';
import 'package:flutter/material.dart';
import 'utility/jobcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List jobsForYou = [
    ['uber','UI Designer', 'images/uber.png',45],
    ['Google','Product Dev', 'images/google.png',80],
    ['Apple','Software Eng.', 'images/apple-logo.png',95],
  ];

  final List recentJobs = [
    ['Nike','Web Designer', 'images/nike.png',20],
    ['Apple','Software Eng.', 'images/apple-logo.png',95],
    ['Google','Product Dev', 'images/google.png',44],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.0),

            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.grey[200]
                ),
                height: 50.0,
                child: Image.asset('images/menus.png',color: Colors.grey[800],),
              ),
            ),
            SizedBox(height: 25.0),
            
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text('Discover a new path',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),

            SizedBox(height: 25.0),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              height: 30.0,
                              child: Image.asset('images/search.png'),
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search for a job..'
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),

                  Container(
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset('images/preferences.png'),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),

            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text('For You',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),

            SizedBox(height: 25),

            Container(
              height: 140.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: jobsForYou.length,
                itemBuilder: (context,index){
                  return jobcard(companyName: jobsForYou[index][0], jobTitle: jobsForYou[index][1], logoImgPath: jobsForYou[index][2], hourlyRate: jobsForYou[index][3]);
                  },
              ),
            ),

            SizedBox(height: 40.0),

            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text('Recently Added',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),

            SizedBox(height: 20.0),

            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: ListView.builder(itemCount: recentJobs.length,
                    itemBuilder: (BuildContext context, int index) {
                      return recentJobCard(
                          companyName: recentJobs[index][0],
                          jobTitle: recentJobs[index][1],
                          logoImgPath: recentJobs[index][2],
                          hourlyRate: recentJobs[index][3],
                      );
                    },),
                ),
                ),
          ],
        ),
      ),
    );
  }
}
