import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/cores/app_data.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/pages/widgets/job_item_tile.dart';

import '../bottom_sheet_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Job> jobList = AppData().getJobList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: body(),
      ),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(24),
        color: Colors.black12.withOpacity(0.01),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    "assets/icons/menu.png",
                    height: 42,
                    width: 42,
                    color: Colors.black87.withOpacity(0.7),
                  ),
                ),
                Container(
                    alignment: Alignment.topRight,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () async {
                            showModalBottomSheet(
                              elevation: 8,
                                isDismissible: true,
                                isScrollControlled: true,
                                context: context,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                builder: (context) {
                                  return BottomSheetView(MediaQuery.of(context).size.height - 160);
                                });
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  color: Colors.white),
                              padding: const EdgeInsets.all(12),
                              child: Image.asset(
                                "assets/icons/search.png",
                                height: 32,
                                width: 32,
                                color: Colors.black87.withOpacity(0.8),
                              )),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              color: Colors.white),
                          padding: const EdgeInsets.all(12),
                          child: Icon(
                            Icons.person,
                            size: 32,
                            color: Colors.black87.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 24),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Hello",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black87.withOpacity(0.4),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 2),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Rakib K.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black87.withOpacity(0.8),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.orangeAccent.withOpacity(0.2)),
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(top: 16),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("50% off",
                      style: TextStyle(
                        color: Colors.black87.withOpacity(0.6),
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  Text("take any courses",
                      style: TextStyle(
                        color: Colors.black87.withOpacity(0.6),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Colors.black87),
                    padding: const EdgeInsets.all(12),
                    child: Text("Join Now",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Text("Find your job",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black87.withOpacity(0.6),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.42,
                  height: 196,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blueAccent.withOpacity(0.2)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(21),
                              color: Colors.white),
                          padding: const EdgeInsets.all(12),
                          child: Image.asset(
                            "assets/icons/remote_job.png",
                            height: 32,
                            width: 32,
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                      Text("44.8k",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black87.withOpacity(0.8),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        height: 4,
                      ),
                      Text("Remote Job",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black87.withOpacity(0.6),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        height: 24,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.42,
                    padding: const EdgeInsets.all(12),
                    height: 228,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.purpleAccent.withOpacity(0.2)),
                          height: 96,
                          child: Row(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(21),
                                      color: Colors.white),
                                  padding: const EdgeInsets.all(12),
                                  margin: const EdgeInsets.all(12),
                                  child: Image.asset(
                                    "assets/icons/full_time_job.png",
                                    height: 32,
                                    width: 32,
                                  )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Text("66.8k",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: Colors.black87.withOpacity(0.8),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text("Full time",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: Colors.black87.withOpacity(0.6),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 96,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.greenAccent.withOpacity(0.4)),
                          child: Row(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(21),
                                      color: Colors.white),
                                  padding: const EdgeInsets.all(12),
                                  margin: const EdgeInsets.all(12),
                                  child: Image.asset(
                                    "assets/icons/heart.png",
                                    height: 32,
                                    width: 32,
                                  )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Text("38.9k",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: Colors.black87.withOpacity(0.8),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text("Part time",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: Colors.black87.withOpacity(0.6),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recent Job List",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black87.withOpacity(0.7),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),
                Text("See All",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black87.withOpacity(0.6),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: jobList.length,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(0),
              itemBuilder: (context, index) {
                return JobItemTile(jobList[index]);
              },
            )
          ],
        ),
      ),
    );
  }
}
