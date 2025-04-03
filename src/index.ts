import { Hono } from "hono";
import { serve } from "@hono/node-server";

const app = new Hono();

app.get("/ping", (c) => {
  return c.json({ pong: "Hello, World" });
});

const port = 3000;
serve({ fetch: app.fetch, port });

console.log(`Server running on http://localhost:${port}`);

export default app;
