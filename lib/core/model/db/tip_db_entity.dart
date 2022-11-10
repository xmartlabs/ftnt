import 'package:floor/floor.dart';

@Entity(tableName: 'Tips')
class TipDbEntity {
  @primaryKey
  final String id;
  final String name;
  final String url;
  final String imageUrl;
  final String? codeUrl;
  final String? mdUrl;
  bool favourite;
  int randomId;
  int amountViews;

  TipDbEntity({
    required this.id,
    required this.name,
    required this.url,
    required this.imageUrl,
    required this.codeUrl,
    required this.mdUrl,
    required this.randomId,
    this.favourite = false,
    this.amountViews = 0,
  });
}
