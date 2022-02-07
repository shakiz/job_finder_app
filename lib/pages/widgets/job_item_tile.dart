import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/pages/job_details/job_details_page.dart';

class JobItemTile extends StatefulWidget {
  Job jobData;

  JobItemTile(this.jobData, {Key? key}) : super(key: key);

  @override
  _JobItemTileState createState() => _JobItemTileState();
}

class _JobItemTileState extends State<JobItemTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => JobDetails(widget.jobData)));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            ListTile(
              leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.purpleAccent.withOpacity(0.3)),
                  child: Image.asset(
                    widget.jobData.CompanyLogo,
                    height: 42,
                    width: 42,
                    color: Colors.black87.withOpacity(0.8),
                  )),
              title: Text(
                widget.jobData.JobTitle,
                style: TextStyle(
                    color: Colors.black87.withOpacity(0.8),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  "${widget.jobData.SalaryRange}/month",
                  style: TextStyle(
                    color: Colors.black87.withOpacity(0.7),
                    fontSize: 16,
                  ),
                ),
              ),
              trailing: Image.asset(
                "assets/icons/save.png",
                height: 32,
                width: 32,
                color: Colors.black54.withOpacity(0.8),
              ),
            ),
            Row(
              children: [
                const SizedBox(width: 12,),
                Chip(
                  label: Text(widget.jobData.JobPosition),
                  backgroundColor: Colors.grey.withOpacity(0.03),
                  labelStyle: TextStyle(color: Colors.black87.withOpacity(0.9)),
                ),
                const SizedBox(width: 12,),
                Chip(
                  label: Text(widget.jobData.JobType),
                  backgroundColor: Colors.grey.withOpacity(0.03),
                  labelStyle: TextStyle(color: Colors.black54.withOpacity(0.9)),
                ),
                const SizedBox(width: 12,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Chip(
                    label: const Text("Apply", style: TextStyle(fontSize: 16),),
                    backgroundColor: Colors.orangeAccent.withOpacity(0.6),
                    labelStyle: TextStyle(color: Colors.black54.withOpacity(0.8)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
