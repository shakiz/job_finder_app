import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';

class JobDetails extends StatefulWidget {
  Job jobData;

  JobDetails(this.jobData, {Key? key}) : super(key: key);

  @override
  _JobDetailsState createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(""),
        leading: Builder(
          builder: (context) => InkWell(
            onTap: () {
              Navigator.of(context).pop(true);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black87.withOpacity(0.8),
            ),
          ),
        ),
        actions: [
          Builder(
            builder: (context) => InkWell(
              onTap: () {},
              child: Container(
                  margin: const EdgeInsets.only(top: 4, bottom: 4, right: 8),
                  child: Image.asset(
                    "assets/icons/save.png",
                    height: 32,
                    width: 32,
                    color: Colors.black87.withOpacity(0.8),
                  )),
            ),
          ),
        ],
      ),
      body: body(),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 96,
                    height: 96,
                    padding: const EdgeInsets.all(16),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(48),
                      color: const Color(0xFF8BDb81).withOpacity(0.8),
                      border: Border.all(color: Colors.white, width: 2)
                    ),
                    child: Image.asset(widget.jobData.CompanyLogo, height: 48, width: 48,),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 48),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.withOpacity(0.2)
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 48,),
                      Text(widget.jobData.JobTitle, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black87),),
                      const SizedBox(height: 24,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(width: 24,),
                          Text(widget.jobData.CompanyName, style: TextStyle(color: Colors.black87.withOpacity(0.9),),),
                          Icon(Icons.circle, size: 8, color: Colors.grey.withOpacity(0.6),),
                          Text(widget.jobData.CompanyLocation, style: TextStyle(color: Colors.black87.withOpacity(0.9),),),
                          Icon(Icons.circle, size: 8, color: Colors.grey.withOpacity(0.6),),
                          Text(widget.jobData.JobPostDay, style: TextStyle(color: Colors.black87.withOpacity(0.9),),),
                          const SizedBox(width: 24,),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 12,),
                Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            color: Colors.yellowAccent.withOpacity(0.4)),
                        padding: const EdgeInsets.all(12),
                        child: Image.asset(
                          "assets/icons/dollar.png",
                          height: 32,
                          width: 32,
                          color: Colors.black87.withOpacity(0.8),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    Text("Salary",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black87.withOpacity(0.6),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                    Text(widget.jobData.SalaryRange,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black87.withOpacity(0.8),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            color: Colors.purpleAccent.withOpacity(0.5)),
                        padding: const EdgeInsets.all(12),
                        child: Image.asset(
                          "assets/icons/stopwatch.png",
                          height: 32,
                          width: 32,
                          color: Colors.black87.withOpacity(0.8),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    Text("Job Type",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black87.withOpacity(0.6),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                    Text(widget.jobData.JobType,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black87.withOpacity(0.8),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            color: Colors.blueAccent.withOpacity(0.6)),
                        padding: const EdgeInsets.all(12),
                        child: Image.asset(
                          "assets/icons/job_position.png",
                          height: 32,
                          width: 32,
                          color: Colors.black87.withOpacity(0.8),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    Text("Position",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black87.withOpacity(0.6),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                    Text(widget.jobData.JobPosition,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black87.withOpacity(0.8),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
                const SizedBox(width: 12,),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              alignment: Alignment.centerLeft,
              child: Text("Description",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black87.withOpacity(0.8),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16, top: 24),
              alignment: Alignment.centerLeft,
              child: Text("•  ${widget.jobData.JobShortDescription}",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black87.withOpacity(0.7),
                    fontSize: 20,
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16, top: 24),
              alignment: Alignment.centerLeft,
              child: Text("•  ${widget.jobData.JobLongDescription}",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black87.withOpacity(0.7),
                    fontSize: 20,
                  )),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 56,
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 32),
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500]!,
                      offset: const Offset(4, 4),
                      blurRadius: 15,
                      spreadRadius: 1
                    ),
                    const BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4, -4),
                        blurRadius: 15,
                        spreadRadius: 1
                    )
                  ]
                ),
                child: const Text("Apply now", style: TextStyle(fontSize: 20, color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
