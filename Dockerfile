FROM anasty17/mltb:latest
# FROM anasty17/mltb-oracle:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN apt install -y mediainfo
COPY yasir_req.txt .
RUN pip3 install --no-cache-dir -r yasir_req.txt

COPY . .

CMD ["bash", "start.sh"]
