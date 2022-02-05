
class Job{
  late int JobId;
  late String JobTitle;
  late String CompanyLogo;
  late String CompanyName;
  late String CompanyLocation;
  late String SalaryRange;
  late String JobType;
  late String JobPosition;
  late String JobShortDescription;
  late String JobLongDescription;
  late String JobPostDay;
  late bool IsFavorite;

  Job(
      {required this.JobId,
      required this.JobTitle,
      required this.CompanyName,
      required this.CompanyLogo,
      required this.CompanyLocation,
      required this.SalaryRange,
      required this.JobType,
      required this.JobPosition,
      required this.JobShortDescription,
      required this.JobLongDescription,
      required this.JobPostDay,
      required this.IsFavorite});
}