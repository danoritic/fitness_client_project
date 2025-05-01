class SessionHistoryItemPackModel {
  final String date;
  final List<SessionHistoryItemModel> listOfSessionHistoryItemModel;

  SessionHistoryItemPackModel(
      {required this.date, required this.listOfSessionHistoryItemModel});
}

class SessionHistoryItemModel {
  final String? title;
  final String? dateTime;
  final double? percent;
  final String? imagePart;

  SessionHistoryItemModel({
    required this.title,
    required this.dateTime,
    required this.percent,
    required this.imagePart,
  });
}

SessionHistoryItemPackModel defaultSessionHistoryItemPackModel =
    SessionHistoryItemPackModel(
        date: DateTime.now().toString(),
        listOfSessionHistoryItemModel: [
      SessionHistoryItemModel(
        title: "Leg Workouts",
        dateTime: DateTime.now().toString(),
        percent: 94,
        imagePart: "assets/images/aiChatSessionHistoryIcon-bone.png",
      ),
      SessionHistoryItemModel(
        title: "Keto Diet VS Meat Diet",
        dateTime: DateTime.now().toString(),
        percent: 98,
        imagePart: "assets/images/aiChatSessionHistoryIcon-fork.png",
      ),
      SessionHistoryItemModel(
        title: "Upper Body Session 1",
        dateTime: DateTime.now().toString(),
        percent: 98,
        imagePart: "assets/images/aiChatSessionHistoryIcon-dumbell.png",
      ),
      SessionHistoryItemModel(
        title: "Yoga & Relaxation",
        dateTime: DateTime.now().toString(),
        percent: 98,
        imagePart: "assets/images/aiChatSessionHistoryIcon-leaf.png",
      ),
      SessionHistoryItemModel(
        title: "Injury Treatment",
        dateTime: DateTime.now().toString(),
        percent: 98,
        imagePart: "assets/images/aiChatSessionHistoryIcon-crotches.png",
      ),
    ]);
