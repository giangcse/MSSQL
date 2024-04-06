# Sử dụng SQL Server 2019 Ubuntu image từ Microsoft
FROM mcr.microsoft.com/mssql/server:2019-latest

# Thiết lập biến môi trường
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=P@55W0rd

# Expose cổng 1433
EXPOSE 1433
