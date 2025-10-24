FROM registry.access.redhat.com/ubi8/nodejs-18
USER root
WORKDIR /opt/app-root/src
COPY . .
RUN useradd -m myuser
RUN chown -R myuser:myuser /opt/app-root/src
USER myuser
RUN npm install
CMD ["npm", "start"]

