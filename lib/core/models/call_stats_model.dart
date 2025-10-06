// lib/core/models/call_stats_model.dart

class CallStatsModel {
  final int pending;
  final int called;
  final int rescheduled;

  CallStatsModel({
    required this.pending,
    required this.called,
    required this.rescheduled,
  });

  factory CallStatsModel.fromJson(Map<String, dynamic> json) {
    return CallStatsModel(
      // Use 0 as a fallback if the API doesn't return a value
      pending: json['pending'] ?? 0,
      called: json['called'] ?? 0,
      rescheduled: json['rescheduled'] ?? 0,
    );
  }
}