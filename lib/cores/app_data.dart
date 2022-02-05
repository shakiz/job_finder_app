import 'package:job_finder_app/models/job.dart';

class AppData {
  List<Job> getJobList() {
    List<Job> jobList = [];
    jobList.add(Job(
        JobId: 1,
        JobTitle: "Android Engineer",
        CompanyLogo: "assets/icons/google.png",
        CompanyName: "Google",
        CompanyLocation: "San Fransisco",
        SalaryRange: "60-70k",
        JobType: "Full time",
        JobPosition: "SDE II",
        JobShortDescription: "Dept is growing fast and we're looking for folks who enjoy building great products together with peers and clients.",
        JobLongDescription: "Dept is a small but growing, tight-knit group of experienced engineers and designers that love building products with like-minded folks. We are all on the same team working together toward the same goals, and we all help each other along the way. Some of the things that we believe in. Our philosophy is to hire smart, client facing engineers, at all levels, that can both understand our client’s business goals and write elegant code.",
        JobPostDay: "2 days ago",
        IsFavorite: true));
    jobList.add(Job(
        JobId: 2,
        JobTitle: "UI Designer",
        CompanyLogo: "assets/icons/apple-logo.png",
        CompanyName: "Apple Inc.",
        CompanyLocation: "Finland",
        SalaryRange: "40-50k",
        JobType: "Full time",
        JobPosition: "Mid Level",
        JobShortDescription: "A UI Designer is a technical role that is responsible for presenting a product's development in a way that is attractive and convenient for users.",
        JobLongDescription: "As the position combines elements of programming, psychology and digital design a UI designer requires specialized training in all areas to deliver quality products and services. A bachelor's degree in Computer Science, Web Development, Graphic Design or related field is essential. Individuals who enjoying bringing abstract concepts to life and working with clients to improve their business marketing platforms tend to perform well in the position of a UI designer.",
        JobPostDay: "21 hours ago",
        IsFavorite: true));
    jobList.add(Job(
        JobId: 3,
        JobTitle: "Product Designer",
        CompanyLogo: "assets/icons/facebook.png",
        CompanyName: "Facebook",
        CompanyLocation: "Singapore",
        SalaryRange: "100-150k",
        JobType: "Full time",
        JobPosition: "Senior",
        JobShortDescription: "Agoda is a technology conglomerate that offers a wide range of everyday solutions for consumers and businesses. With expertise on the B2C and B2B service industry, we incorporate technology into the ordinary business processes and revolutionize it from the inside out.",
        JobLongDescription: "As the position combines elements of programming, psychology and digital design a UI designer requires specialized training in all areas to deliver quality products and services. A bachelor's degree in Computer Science, Web Development, Graphic Design or related field is essential. Individuals who enjoying bringing abstract concepts to life and working with clients to improve their business marketing platforms tend to perform well in the position of a UI designer.",
        JobPostDay: "1 day ago",
        IsFavorite: true));
    return jobList;
  }
}
