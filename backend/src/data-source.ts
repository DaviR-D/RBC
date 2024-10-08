import "reflect-metadata";
import { DataSource } from "typeorm";
import { User } from "./entity/Doenca";

export const AppDataSource = new DataSource({
  type: "postgres",
  host: "localhost",
  port: 5432,
  username: "rbc",
  password: "rbc",
  database: "rbc",
  synchronize: true,
  logging: false,
  entities: [User],
  migrations: ["src/migration/**/*.ts"],
  subscribers: [],
});
