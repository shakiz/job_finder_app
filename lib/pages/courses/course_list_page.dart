import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/cores/app_data.dart';
import 'package:job_finder_app/models/course.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/pages/widgets/course_item_tile.dart';

import '../bottom_sheet_view.dart';

class CourseListPage extends StatefulWidget {

  CourseListPage({Key? key}) : super(key: key);

  @override
  _CourseListPageState createState() => _CourseListPageState();
}

class _CourseListPageState extends State<CourseListPage> {
  List<Course> courseList = AppData().getCourseList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12.withOpacity(0.01),
        elevation: 0,
        title: Text("Courses", style: TextStyle(color: Colors.black87.withOpacity(0.8)),),
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
                      borderRadius: BorderRadius.circular(48),
                      color: Colors.white),
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(8),
                  child: Image.asset(
                    "assets/icons/search.png",
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
        padding: const EdgeInsets.all(16),
        color: Colors.black12.withOpacity(0.01),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: courseList.length,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(0),
              itemBuilder: (context, index) {
                return CourseItemTile(courseList[index]);
              },
            )
          ],
        ),
      ),
    );
  }
}
