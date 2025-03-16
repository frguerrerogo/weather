abstract class Adapter<Entity, Model> {
  // Convierte una entidad a un modelo
  Model entityToModel(Entity entity);

  // Convierte un modelo a una entidad
  Entity modelToEntity(Model model);
}

mixin RealmAdapter<Entity, RealmEntity> {
  RealmEntity entityToRealm(Entity entity) => throw UnimplementedError();
  Entity realmToEntity(RealmEntity realm) => throw UnimplementedError();
}
