# Sử dụng SQL Server 2019 Ubuntu image từ Microsoft
FROM mcr.microsoft.com/mssql/server:2019-latest

# Thiết lập biến môi trường
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=P@55W0rd

# Expose cổng 1433
EXPOSE 1433

# Thực hiện cấp quyền cho tệp permissions_check.sh và sqlservr
USER root
RUN chmod +x /opt/mssql/bin/permissions_check.sh && \
    chmod +x /opt/mssql/bin/sqlservr
USER mssql
