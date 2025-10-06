// lib/core/models/calling_list_model.dart

class CallingListModel {
  final String id;
  final String name;
  final String clientId;

  CallingListModel({
    required this.id,
    required this.name,
    required this.clientId,
  });

  factory CallingListModel.fromJson(Map<String, dynamic> json) {
    return CallingListModel(
      id: json['_id'],
      name: json['name'],
      clientId: json['clientId'],
    );
  }
}