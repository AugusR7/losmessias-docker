# Use the official MySQL image from Docker Hub
FROM mysql:latest

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=admin123
ENV MYSQL_DATABASE=losmessias
ENV MYSQL_USER=losmessiasuser
ENV MYSQL_PASSWORD=Losmessias!

# Copy all SQL files to the initialization directory
COPY sql-files/*.sql /docker-entrypoint-initdb.d/

# Expose the MySQL port
EXPOSE 3306

# Start the MySQL service when the container starts
CMD ["mysqld"]