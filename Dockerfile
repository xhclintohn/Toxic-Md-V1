FROM quay.io/sampandey001/secktor

RUN git clone https://github.com/xhclintohn/Toxic-Md-V1 /root/xhclintohn

# Clear npm cache and remove node_modules directories
RUN npm cache clean --force
RUN rm -rf /root/xhclintohn/node_modules

# Install dependencies
WORKDIR /root/xhclintohn
RUN npm install

# Add additional Steps To Run...
EXPOSE 3000
CMD ["npm","start" ]