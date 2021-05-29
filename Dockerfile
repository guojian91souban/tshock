FROM busybox as download
ARG TS=https://github.com/Pryaxis/TShock/releases/download/v4.5.3/TShock_4.5.3_Terraria_1.4.2.3.zip
RUN wget ${TS} -O ts.zip && unzip ts.zip -d /ts
COPY start.sh /ts

FROM mono
WORKDIR /ts
COPY --from=download /ts .

EXPOSE 7777
# 最大在线人数
ENV maxplayers=3
# 生成地图的名称
ENV mapname=hello
# 地图大小 1小 2中 3大
ENV mapsize=1

# 设置文件存储地址/data/${base}/xxx
ENV base=conf

CMD ./start.sh