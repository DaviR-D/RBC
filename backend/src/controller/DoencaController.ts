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
    //let novo_caso = request.body;
    let casos = await this.recuperarCasos();
    let casos_convertidos = this.converterCasos(casos);

    let novo_caso = {
      area_damaged: "low-areas",
      canker_lesion: "brown",
      crop_hist: "same-1st-yr",
      date: "outubro",
      external_decay: "firm-and-dry",
      fruit_spots: "dna",
      fruiting_bodies: "present",
      fruit_pods: "norm",
      germination: "90-100%",
      hail: "yes",
      int_discolor: "none",
      leaf_malf: "absent",
      leaf_mild: "absent",
      leaf_shread: "absent",
      leafspots_halo: "absent",
      leafspot_size: "dna",
      leafspots_marg: "dna",
      leaves: "abnorm",
      lodging: "no",
      mold_growth: "absent",
      mycelium: "absent",
      plant_growth: "abnorm",
      plant_stand: "normal",
      precip: "gt-normal",
      roots: "norm",
      sclerotia: "absent",
      seed: "norm",
      seed_discolor: "absent",
      seed_size: "norm",
      seed_tmt: "none",
      severity: "pot-severe",
      shriveling: "absent",
      stem: "abnorm",
      stem_cankers: "above-sec-nde",
      temp: "norm",
    };

    novo_caso = this.converterCaso(novo_caso);

    let similaridadeGlobalBase = this.calcularSimGlobalBase(
      casos_convertidos,
      novo_caso
    );

    return similaridadeGlobalBase;
  }

  calcularSimGlobalBase(base, novo_caso) {
    let simBaseCasos = [];

    base.forEach((caso_base) => {
      simBaseCasos.push(this.calcularSimGlobal(caso_base, novo_caso));
    });

    return simBaseCasos;
  }

  calcularSimGlobal(caso_base, novo_caso) {
    let simGlobal = 0;
    Object.keys(this.similaridade).forEach((local) => {
      caso_base[local] = this.calcularSimLocal(
        caso_base[local],
        novo_caso[local],
        this.similaridade[local]["limites"]["limite_inferior"],
        this.similaridade[local]["limites"]["limite_superior"]
      );
    });

    Object.keys(this.similaridade).forEach((local) => {
      simGlobal += caso_base[local] * this.similaridade[local]["peso"];
    });

    simGlobal = simGlobal / 195;

    caso_base["similaridade"] = simGlobal;

    return caso_base;
  }

  calcularSimLocal(caso_base, novo_caso, lim_inferior, lim_superior) {
    let simLocal =
      1 - Math.abs(novo_caso - caso_base) / (lim_superior - lim_inferior);

    return simLocal;
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

  converterCasos(casos) {
    let casos_convertidos = casos.map((caso) => {
      return this.converterCaso(caso);
    });

    return casos_convertidos;
  }

  converterCaso(caso) {
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
