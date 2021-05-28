FROM mono

WORKDIR /ts
# https://github.com/Pryaxis/TShock/releases
COPY TShock_4.5.3_Terraria_1.4.2.3 .
COPY start.sh .

EXPOSE 7777
ENV maxplayers=3
ENV mapname=hello
ENV mapsize=1
ENV base=data

CMD ./start.sh
