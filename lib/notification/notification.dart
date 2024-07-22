import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal:
              screenWidth * 0.05, // 5% of screen width as horizontal padding
        ),
        children: [
          NotificationSection(
            title: 'Today',
            notifications: [
              NotificationItem(
                title: 'Driver Arrived',
                content:
                    'Lorem ipsum dolor sit amet consectetur. Ultrici es tincidunt eleifend vitae',
                time: '15 min ago',
                highlight: true,
              ),
              NotificationItem(
                title: 'Payment confirm',
                content:
                    'Lorem ipsum dolor sit amet consectetur. Ultrici es tincidunt eleifend vitae',
                time: '25 min ago',
                highlight: false,
              ),
            ],
          ),
          NotificationSection(
            title: 'Yesterday',
            notifications: [
              NotificationItem(
                title: 'Driver Arrived',
                content:
                    'Lorem ipsum dolor sit amet consectetur. Ultrici es tincidunt eleifend vitae',
                time: '15 min ago',
                highlight: true,
              ),
              NotificationItem(
                title: 'Payment confirm',
                content:
                    'Lorem ipsum dolor sit amet consectetur. Ultrici es tincidunt eleifend vitae',
                time: '25 min ago',
                highlight: false,
              ),
              NotificationItem(
                title: 'Payment confirm',
                content:
                    'Lorem ipsum dolor sit amet consectetur. Ultrici es tincidunt eleifend vitae',
                time: '25 min ago',
                highlight: false,
              ),
              NotificationItem(
                title: 'Driver Arrived',
                content:
                    'Lorem ipsum dolor sit amet consectetur. Ultrici es tincidunt eleifend vitae',
                time: '15 min ago',
                highlight: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NotificationSection extends StatelessWidget {
  final String title;
  final List<NotificationItem> notifications;

  NotificationSection({required this.title, required this.notifications});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Column(
          children: notifications.map((notification) {
            return NotificationTile(
              title: notification.title,
              content: notification.content,
              time: notification.time,
              highlight: notification.highlight,
            );
          }).toList(),
        ),
      ],
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String title;
  final String content;
  final String time;
  final bool highlight;

  NotificationTile({
    required this.title,
    required this.content,
    required this.time,
    required this.highlight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: highlight ? Colors.green[100] : Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            content,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            time,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationItem {
  final String title;
  final String content;
  final String time;
  final bool highlight;

  NotificationItem({
    required this.title,
    required this.content,
    required this.time,
    required this.highlight,
  });
}
