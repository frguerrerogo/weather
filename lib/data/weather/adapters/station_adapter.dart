import 'package:weather/data/core/adapters/index.dart' show Adapter;
import 'package:weather/data/core/models/index.dart' show StationModel;
import 'package:weather/domain/core/entities/index.dart' show Station;

class StationAdapter implements Adapter<Station, StationModel> {
  @override
  Station toEntity(StationModel model) {
    return Station(
      distance: model.distance ?? 0.0,
      latitude: model.latitude ?? 0.0,
      longitude: model.longitude ?? 0.0,
      useCount: model.useCount ?? 0,
      id: model.id ?? '',
      name: model.name ?? '',
      quality: model.quality ?? 0,
      contribution: model.contribution ?? 0.0,
    );
  }

  @override
  StationModel toModel(Station entity) {
    return StationModel(
      distance: entity.distance,
      latitude: entity.latitude,
      longitude: entity.longitude,
      useCount: entity.useCount,
      id: entity.id,
      name: entity.name,
      quality: entity.quality,
      contribution: entity.contribution,
    );
  }
}
