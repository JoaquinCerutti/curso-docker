FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build

WORKDIR /src
COPY MultiStage.csproj .
RUN dotnet restore
COPY . .

RUN dotnet build "MultiStage.csproj" -c Release -o /app/build

RUN dotnet publish -c Release -o /app

FROM mcr.microsoft.com/dotnet/sdk:10.0
WORKDIR /app
COPY --from=build /app .
ENTRYPOINT ["dotnet", "MultiStage.dll"]


# Separamos las etapas de build y la final, ahorrando memoria en la imagen final
# En la etapa de build, usamos la imagen completa del SDK para compilar y publicar la aplicación
# En la etapa final, copiamos solo los archivos necesarios para ejecutar 
# la aplicación, lo que reduce el tamaño de la imagen final


