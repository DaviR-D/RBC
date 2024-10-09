import "reflect-metadata";
import { DataSource } from "typeorm";
import { Doenca } from "./entity/Doenca";

export const AppDataSource = new DataSource({
  type: "postgres",
  host: "localhost",
  port: 5432,
  username: "rbc",
  password: "rbc",
  database: "rbc",
  synchronize: true,
  logging: false,
  entities: [Doenca],
  migrations: ["src/migration/**/*.ts"],
  subscribers: [],
});
