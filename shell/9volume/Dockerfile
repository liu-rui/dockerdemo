FROM nginx

MAINTAINER test
VOLUME [ "/data" ] 
WORKDIR /data

ADD p.sh ./

CMD ["sh" , "p.sh" ]

#当启动的时候需要执行多条语句的时候，使用bash文件