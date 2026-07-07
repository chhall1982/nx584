FROM alpine:latest

RUN apk add python3 py3-pip git

RUN pip3 install --upgrade pip --break-system-packages

RUN git clone https://github.com/kk7ds/pynx584
RUN pip3 install pynx584/ --break-system-packages

# Verify python installation
RUN which python3

# Verify package installation location
RUN /usr/bin/nx584_server --help

WORKDIR /usr/app/src
COPY config.ini .

# Copy data for add-on
COPY run.sh /
RUN sed -i 's/\r$//' /run.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
