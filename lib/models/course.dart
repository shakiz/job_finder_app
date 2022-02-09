class Course{
  late int CourseId;
  late String CourseTitle;
  late String CourseCategory;
  late String CoursePrice;
  late int NoOfLesson;
  late String Rating;
  late String NoOfPeopleEnrolled;
  late String InstructorName;

  Course(
      {required this.CourseId,
      required this.CourseTitle,
      required this.CourseCategory,
      required this.CoursePrice,
      required this.NoOfLesson,
      required this.Rating,
      required this.NoOfPeopleEnrolled,
      required this.InstructorName});
}