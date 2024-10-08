import { AppDataSource } from "../data-source";
import { NextFunction, Request, Response } from "express";
import { Doenca } from "../entity/Doenca";

export class DoencaController {
  private userRepository = AppDataSource.getRepository(Doenca);
}
