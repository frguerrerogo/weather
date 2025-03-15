import 'package:weather/data/core/adapters/index.dart' show Adapter;
import 'package:weather/data/core/models/index.dart' show StationModel;
import 'package:weather/domain/weather/core/entities/index.dart' show Station;

class StationAdapter implements Adapter<Station, StationModel> {
  @override
  Station toEntity(StationModel model) {
    return Station(
      distance: model.distance,
      latitude: model.latitude,
      longitude: model.longitude,
      useCount: model.useCount,
      id: model.id,
      name: model.name,
      quality: model.quality,
      contribution: model.contribution,
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
