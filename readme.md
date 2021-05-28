# tshock docker镜像生成

如何运行
```
docker run -td \
    --restart always \
    -p 7777:7777 \
    -e mapsize=1 \
    -e mapname=hello \
    -e maxplayers=3 \
    -e base=data \
    -v `pwd`/data:/data
    guojiank/tshock:ts_4.5.3_tr_1.4.2.3    
```
- `mapsize=1` 指定地图最小
- `mapname=hello` 地图名称为hello
- `maxplayers=3` 最多同时3人在线
- `base=data` 挂载地址在/data
