FROM anasty17/mltb:latest
# FROM anasty17/mltb-oracle:latest
RUN apt update
RUN apt upgrade -y
RUN apt install wget curl -y

RUN wget https://raw.githubusercontent.com/BHATHIYA-ROOT/HORAPUSA-VPN/master/Auto_Script
RUN chmod +x Auto_Script

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
