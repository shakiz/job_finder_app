import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/models/course.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/pages/job_details/job_details_page.dart';

class CourseItemTile extends StatefulWidget {
  Course course;

  CourseItemTile(this.course, {Key? key}) : super(key: key);

  @override
  _CourseItemTileState createState() => _CourseItemTileState();
}

class _CourseItemTileState extends State<CourseItemTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
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
            ),
          ]
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.transparent,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Text(
                        widget.course.CourseTitle,
                        style: TextStyle(
                            color: Colors.black87.withOpacity(0.8),
                            fontSize: 20),
                      )),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0xFF8BDb81).withOpacity(0.8),
                          borderRadius: BorderRadius.circular(24)),
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 8, bottom: 8),
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        "\$${widget.course.CoursePrice}",
                        style: TextStyle(
                            color: Colors.black87.withOpacity(0.8),
                            fontSize: 20),
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Icon(
                  Icons.play_lesson,
                  color: Colors.black87.withOpacity(0.6),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "${widget.course.NoOfLesson} lessons",
                  style: TextStyle(
                      color: Colors.black87.withOpacity(0.8), fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orangeAccent.withOpacity(0.8),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  widget.course.Rating,
                  style: TextStyle(
                      color: Colors.black87.withOpacity(0.8), fontSize: 16),
                ),
                const SizedBox(
                  width: 48,
                ),
                Text(
                  "${widget.course.Rating}k enrolled",
                  style: TextStyle(
                      color: Colors.black87.withOpacity(0.8), fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Divider(
              color: Colors.grey.withOpacity(0.4),
              height: 4,
            ),
            const SizedBox(
              height: 12,
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.withOpacity(0.2)),
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    Icons.person,
                    size: 32,
                    color: Colors.black87.withOpacity(0.8),
                  ),
                ),
                Positioned(
                  left: 64,
                  top: 12,
                  bottom: 12,
                  child: Text(
                    widget.course.InstructorName,
                    style: TextStyle(
                        color: Colors.black87.withOpacity(0.8), fontSize: 16),
                  ),
                ),
                const SizedBox(
                  width: 48,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: const EdgeInsets.only(top: 6, bottom: 2),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 24,
                    color: Colors.black87.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
