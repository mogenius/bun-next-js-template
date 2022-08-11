# ------------------------------
# DOES NOT WORK ON APPLE SILICON
# ------------------------------

FROM jarredsumner/bun:edge

WORKDIR /app

COPY package.json package.json

COPY bun.lockb bun.lockb

RUN bun install --silent --no-progress 

COPY . .

EXPOSE 3000

ENTRYPOINT ["bun", "dev"]