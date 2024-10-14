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
    const doencas = await this.doencaRepository
      .createQueryBuilder("doenca")
      .select("*")
      .getRawMany();

    const doencasLowerCase = doencas.map((doenca) => {
      return Object.fromEntries(
        Object.entries(doenca).map(([key, value]) =>
          typeof value === "string" ? [key, value.toLowerCase()] : [key, value]
        )
      );
    });

    return doencasLowerCase;
  }
}
