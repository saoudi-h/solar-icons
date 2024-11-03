import { base } from "./configs/base.js";
import { next } from "./configs/next.js";
import { playwright } from "./configs/playwright.js";
import { react } from "./configs/react.js";
import { storybook } from "./configs/storybook.js";

export { defineConfig } from "./utils.js";

export const configs = {
  base,
  playwright,
  react,
  next,
  storybook,
};
