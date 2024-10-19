class NotificationData {
  final String image;
  final String title;
  final String body;
  final String timestamp;

  NotificationData({
    required this.image,
    required this.title,
    required this.body,
    required this.timestamp,
  });

  // Factory method to create an instance of NotificationData from JSON
  factory NotificationData.fromJson(Map<String, dynamic> json) {
    return NotificationData(
      image: json['image'],
      title: json['title'],
      body: json['body'],
      timestamp: json['timestamp'],
    );
  }

  // Convert the instance of NotificationData to JSON
  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'title': title,
      'body': body,
      'timestamp': timestamp,
    };
  }
}



class NotificationResponse {
  final String message;
  final List<NotificationData> data;

  NotificationResponse({
    required this.message,
    required this.data,
  });

  // Factory method to create an instance of NotificationResponse from JSON
  factory NotificationResponse.fromJson(Map<String, dynamic> json) {
    return NotificationResponse(
      message: json['message'],
      data: List<NotificationData>.from(
        json['data'].map((item) => NotificationData.fromJson(item)),
      ),
    );
  }

  // Convert the instance of NotificationResponse to JSON
  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'data': data.map((item) => item.toJson()).toList(),
    };
  }
}