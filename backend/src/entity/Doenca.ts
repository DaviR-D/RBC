import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity("doencas")
export class Doenca {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: "descDoenca" })
  descDoenca: string;

  @Column({ name: "area_damaged" })
  areaDamaged: string;

  @Column({ name: "canker_lesion" })
  cankerLesion: string;

  @Column({ name: "crop_hist" })
  cropHist: string;

  @Column()
  date: string;

  @Column({ name: "external_decay" })
  externalDecay: string;

  @Column({ name: "fruit_spots" })
  fruitSpots: string;

  @Column({ name: "fruiting_bodies" })
  fruitingBodies: string;

  @Column({ name: "fruit_pods" })
  fruitPods: string;

  @Column()
  germination: string;

  @Column()
  hail: string;

  @Column({ name: "int_discolor" })
  intDiscolor: string;

  @Column({ name: "leaf_malf" })
  leafMalf: string;

  @Column({ name: "leaf_mild" })
  leafMild: string;

  @Column({ name: "leaf_shread" })
  leafShread: string;

  @Column({ name: "leafspots_halo" })
  leafspotsHalo: string;

  @Column({ name: "leafspot_size" })
  leafspotSize: string;

  @Column({ name: "leafspots_marg" })
  leafspotsMarg: string;

  @Column()
  leaves: string;

  @Column()
  lodging: string;

  @Column({ name: "mold_growth" })
  moldGrowth: string;

  @Column()
  mycelium: string;

  @Column({ name: "plant_growth" })
  plantGrowth: string;

  @Column({ name: "plant_stand" })
  plantStand: string;

  @Column()
  precip: string;

  @Column()
  roots: string;

  @Column()
  sclerotia: string;

  @Column()
  seed: string;

  @Column({ name: "seed_discolor" })
  seedDiscolor: string;

  @Column({ name: "seed_size" })
  seedSize: string;

  @Column({ name: "seed_tmt" })
  seedTmt: string;

  @Column()
  severity: string;

  @Column()
  shriveling: string;

  @Column()
  stem: string;

  @Column({ name: "stem_cankers" })
  stemCankers: string;

  @Column()
  temp: string;
}
