class Ratings {
  double totalEditPercentage;
  double weeklyEditPercentage;

  String totalEditValue;
  String weeklyEditValue;

  String leaderDetails;
  String leaderImage;

  Ratings(
      this.totalEditPercentage,
      this.weeklyEditPercentage,
      this.totalEditValue,
      this.weeklyEditValue,
      this.leaderDetails,
      this.leaderImage);
}

final List<Ratings> ratings = [
  Ratings(0.9, 0.8, "273,434", "7,326", "Sam",
      "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60"),
  Ratings(0.9, 0.6, "1,540,501", "5,091", "Banana",
      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60"),
  Ratings(0.2, 0.7, "134,069", "4,529", "Magicus",
      "https://images.unsplash.com/photo-1528763380143-65b3ac89a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60"),
  Ratings(0.4, 0.6, "3,957", "3,957", "Burntmeat",
      "https://images.unsplash.com/photo-1599566147214-ce487862ea4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60"),
  Ratings(0.5, 0.5, "1,062,207", "3,406", "Lineker",
      "https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60"),
  Ratings(0.2, 0.8, "273,434", "7,326", "Alex",
      "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60"),
  Ratings(0.9, 0.6, "1,540,501", "5,091", "Liya",
      "https://images.unsplash.com/photo-1544723795-3fb6469f5b39?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60"),
  Ratings(0.2, 0.7, "134,069", "4,529", "Mark",
      "https://images.unsplash.com/photo-1562853942-9ffca2c450e0?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60"),
  Ratings(0.2, 0.6, "3,957", "3,957", "Turning",
      "https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60"),
  Ratings(0.8, 0.6, "1,062,207", "3,406", "Robin",
      "https://images.unsplash.com/photo-1509783236416-c9ad59bae472?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60"),
];
