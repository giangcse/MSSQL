# Sử dụng ổ đĩa chứa SQL Server 2019
FROM mcr.microsoft.com/mssql/server:2019-latest

# Chạy lệnh khi build image
RUN mkdir -p /usr/src/app

# Sao chép file khởi tạo cơ sở dữ liệu vào container
COPY ./init.sql /usr/src/app/init.sql

# Thiết lập môi trường
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=P@ssw0rd
ENV MSSQL_PID=Express
ENV MSSQL_DATA_DIR=/var/opt/mssql/data
ENV MSSQL_LOG_DIR=/var/opt/mssql/log
ENV MSSQL_DUMP_DIR=/var/opt/mssql/dump

# Thiết lập port mặc định
EXPOSE 1433

# Chạy lệnh khi container được khởi động
CMD /opt/mssql/bin/sqlservr
