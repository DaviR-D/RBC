import { DoencaController } from "./controller/DoencaController";

export const Routes = [
  {
    method: "get",
    route: "/calcSim",
    controller: DoencaController,
    action: "calcularSimilaridade",
  },

  {
    method: "post",
    route: "/users",
    controller: DoencaController,
    action: "save",
  },
];
