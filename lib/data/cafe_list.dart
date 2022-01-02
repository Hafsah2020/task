class CafesList {
  final String image;
  final String title;
  final String subtitle;
  final double ratings;
  final int noOfRatings;
  CafesList(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.ratings,
      required this.noOfRatings});
  static List<CafesList> samples = [
    CafesList(
        image: 'assets/pink/Capture 12.PNG',
        title: 'Le Paris Cafe',
        subtitle: 'City Center, Warsaw',
        ratings: 4.5,
        noOfRatings: 478),
    CafesList(
        image: 'assets/pink/Capture 13.PNG',
        title: 'Labour cafe & Cowori',
        subtitle: 'Seska Kapa, Warsaw',
        ratings: 4.9,
        noOfRatings: 120),
    CafesList(
        image: 'assets/pink/Capture 12.PNG',
        title: 'Le Paris Cafe',
        subtitle: 'City Center, Warsaw',
        ratings: 4.5,
        noOfRatings: 478),
    CafesList(
        image: 'assets/pink/Capture 13.PNG',
        title: 'Labour cafe & Cowori',
        subtitle: 'Seska Kapa, Warsaw',
        ratings: 4.9,
        noOfRatings: 120),
    CafesList(
        image: 'assets/pink/Capture 12.PNG',
        title: 'Le Paris Cafe',
        subtitle: 'City Center, Warsaw',
        ratings: 4.5,
        noOfRatings: 478),
    CafesList(
        image: 'assets/pink/Capture 13.PNG',
        title: 'Labour cafe & Cowori',
        subtitle: 'Seska Kapa, Warsaw',
        ratings: 4.9,
        noOfRatings: 120),
  ];
}
