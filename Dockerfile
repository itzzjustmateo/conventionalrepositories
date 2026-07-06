FROM oven/bun:1.2 AS assets
WORKDIR /src
COPY ./themes/conventional-commits /src/
RUN bun install && bun run build

FROM jguyomard/hugo-builder:latest
COPY ./ /src/
COPY --from=assets /src/ /src/themes/conventional-commits/
RUN hugo

FROM nginx:stable
COPY --from=1 /src/public/ /usr/share/nginx/html/
EXPOSE 80
