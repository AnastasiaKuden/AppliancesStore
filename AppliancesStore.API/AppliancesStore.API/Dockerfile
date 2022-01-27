FROM mcr.microsoft.com/dotnet/aspnet:3.1
COPY AppliancesStore.API/bin/Debug/netcoreapp3.1/ app/
WORKDIR /app
EXPOSE 5000
ENV urls=http://0.0.0.0:5000
ENV DBConnectionString="Data Source=host.docker.internal;Initial Catalog=AppliancesStore.Database;Integrated Security=False;User ID=sa;Password=YourStrongPassword1!;Connection Timeout=20"

ENTRYPOINT ["dotnet", "AppliancesStore.API.dll"]