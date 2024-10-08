import { MigrationInterface, QueryRunner, Table } from "typeorm";

export class CreateDoencasTable1728380679021 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.createTable(
      new Table({
        name: "doencas",
        columns: [
          {
            name: "id",
            type: "int",
            isPrimary: true,
            isGenerated: true,
            generationStrategy: "increment",
          },
          {
            name: "descDoenca",
            type: "varchar",
          },
          {
            name: "area_damaged",
            type: "varchar",
          },
          {
            name: "canker_lesion",
            type: "varchar",
          },
          {
            name: "crop_hist",
            type: "varchar",
          },
          {
            name: "date",
            type: "varchar",
          },
          {
            name: "external_decay",
            type: "varchar",
          },
          {
            name: "fruit_spots",
            type: "varchar",
          },
          {
            name: "fruiting_bodies",
            type: "varchar",
          },
          {
            name: "fruit_pods",
            type: "varchar",
          },
          {
            name: "germination",
            type: "varchar",
          },
          {
            name: "hail",
            type: "varchar",
          },
          {
            name: "int_discolor",
            type: "varchar",
          },
          {
            name: "leaf_malf",
            type: "varchar",
          },
          {
            name: "leaf_mild",
            type: "varchar",
          },
          {
            name: "leaf_shread",
            type: "varchar",
          },
          {
            name: "leafspots_halo",
            type: "varchar",
          },
          {
            name: "leafspot_size",
            type: "varchar",
          },
          {
            name: "leafspots_marg",
            type: "varchar",
          },
          {
            name: "leaves",
            type: "varchar",
          },
          {
            name: "lodging",
            type: "varchar",
          },
          {
            name: "mold_growth",
            type: "varchar",
          },
          {
            name: "mycelium",
            type: "varchar",
          },
          {
            name: "plant_growth",
            type: "varchar",
          },
          {
            name: "plant_stand",
            type: "varchar",
          },
          {
            name: "precip",
            type: "varchar",
          },
          {
            name: "roots",
            type: "varchar",
          },
          {
            name: "sclerotia",
            type: "varchar",
          },
          {
            name: "seed",
            type: "varchar",
          },
          {
            name: "seed_discolor",
            type: "varchar",
          },
          {
            name: "seed_size",
            type: "varchar",
          },
          {
            name: "seed_tmt",
            type: "varchar",
          },
          {
            name: "severity",
            type: "varchar",
          },
          {
            name: "shriveling",
            type: "varchar",
          },
          {
            name: "stem",
            type: "varchar",
          },
          {
            name: "stem_cankers",
            type: "varchar",
          },
          {
            name: "temp",
            type: "varchar",
          },
        ],
      })
    );
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.dropTable("doencas");
  }
}
