FROM node:18.16.0 as build

WORKDIR workspace

COPY . .

RUN yarn \
    && yarn build

FROM nginx:stable

COPY --from=build /workspace/packages/stablestudio-ui/dist/ /usr/share/nginx/html/
COPY docker/nginx/nginx.conf /etc/nginx/conf.d/

RUN rm /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
