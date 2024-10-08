import { DoencaController } from "./controller/DoencaController";

export const Routes = [
  {
    method: "get",
    route: "/users",
    controller: DoencaController,
    action: "all",
  },
  {
    method: "get",
    route: "/users/:id",
    controller: DoencaController,
    action: "one",
  },
  {
    method: "post",
    route: "/users",
    controller: DoencaController,
    action: "save",
  },
  {
    method: "delete",
    route: "/users/:id",
    controller: DoencaController,
    action: "remove",
  },
];
