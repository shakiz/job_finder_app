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
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black54,
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
                    color: Colors.black54,
                  )),
            ),
          ),
        ],
      ),
      body: body(),
    );
  }

  Widget body() {
    return Container(
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
                    color: Colors.lightGreenAccent.withOpacity(0.7),
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
                  color: Colors.grey.withOpacity(0.1)
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 48,),
                    Text(widget.jobData.JobPosition, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black87),),
                    const SizedBox(height: 24,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 24,),
                        Text(widget.jobData.CompanyName),
                        Icon(Icons.circle, size: 8, color: Colors.grey.withOpacity(0.4),),
                        Text(widget.jobData.CompanyLocation),
                        Icon(Icons.circle, size: 8, color: Colors.grey.withOpacity(0.4),),
                        Text(widget.jobData.JobPostDay),
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
              Column(
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
              Column(
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
              const SizedBox(width: 12,),
            ],
          )
        ],
      ),
    );
  }
}
