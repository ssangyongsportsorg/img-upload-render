FROM chevereto/chevereto:latest

# 環境變量配置使用 Render 的環境變量
ENV CHEVERETO_DB_HOST=${CHEVERETO_DB_HOST} \
    CHEVERETO_DB_USER=${CHEVERETO_DB_USER} \
    CHEVERETO_DB_PASS=${CHEVERETO_DB_PASS} \
    CHEVERETO_DB_PORT=${CHEVERETO_DB_PORT} \
    CHEVERETO_DB_NAME=${CHEVERETO_DB_NAME} \
    CHEVERETO_MAX_POST_SIZE=${CHEVERETO_MAX_POST_SIZE} \
    CHEVERETO_MAX_UPLOAD_SIZE=${CHEVERETO_MAX_UPLOAD_SIZE}

# 創建存儲圖片的目錄
RUN mkdir -p /var/www/html/images/

# 暴露80端口
EXPOSE 80

# 啟動命令
CMD ["apache2-foreground"]
