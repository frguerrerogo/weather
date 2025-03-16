import 'package:weather/data/core/adapters/index.dart' show Adapter, RealmAdapter;
import 'package:weather/data/core/models/index.dart' show StationModel;
import 'package:weather/data/core/realm/index.dart' show StationRealm;
import 'package:weather/domain/core/entities/index.dart' show Station;

class StationAdapter extends Adapter<Station, StationModel>
    with RealmAdapter<Station, StationRealm> {
  @override
  Station modelToEntity(StationModel model) {
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
  StationModel entityToModel(Station entity) {
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

  @override
  StationRealm entityToRealm(Station entity) {
    return StationRealm(
      entity.distance,
      entity.latitude,
      entity.longitude,
      entity.useCount,
      entity.id,
      entity.name,
      entity.quality,
      entity.contribution,
    );
  }

  @override
  Station realmToEntity(StationRealm realm) {
    return Station(
      distance: realm.distance,
      latitude: realm.latitude,
      longitude: realm.longitude,
      useCount: realm.useCount,
      id: realm.id,
      name: realm.name,
      quality: realm.quality,
      contribution: realm.contribution,
    );
  }
}
