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
    let casos = await this.recuperarCasos();
    let casos_convertidos = await this.converterCasos(casos);
    return casos_convertidos;
  }

  async recuperarCasos() {
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

  async converterCasos(casos) {
    let casos_convertidos = casos.map((caso) => {
      return this.converterCaso(caso);
    });
  }

  async converterCaso(caso) {
    Object.keys(this.similaridade).forEach((characteristc) => {
      let valor_string = caso[characteristc];
      if (valor_string == "desconhecido") return;
      let valor_peso =
        this.similaridade[characteristc]["variaveis"][valor_string]["valor"];

      caso[characteristc] = valor_peso;
    });

    return caso;
  }
}
