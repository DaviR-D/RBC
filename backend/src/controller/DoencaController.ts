import { AppDataSource } from "../data-source";
import { NextFunction, Request, Response } from "express";
import { Doenca } from "../entity/Doenca";

export class DoencaController {
  private doencaRepository = AppDataSource.getRepository(Doenca);
  similaridade = require("../similaridade.json");

  async calcularSimilaridade(
    request: Request,
    response: Response,
    next: NextFunction
  ) {
    const doencas = await this.doencaRepository.find();
    return { s: this.similaridade, d: doencas };
  }
}
