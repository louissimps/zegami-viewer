FROM microsoft/dotnet:2.2-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 80

FROM microsoft/dotnet:2.2-sdk AS build
WORKDIR /src
COPY ZegamiViewer.Web/ZegamiViewer.Web.csproj ZegamiViewer.Web/
RUN dotnet restore ZegamiViewer.Web/ZegamiViewer.Web.csproj
COPY . .
WORKDIR /src/ZegamiViewer.Web
RUN dotnet build ZegamiViewer.Web.csproj -c Release -o /app

FROM build AS publish
RUN dotnet publish ZegamiViewer.Web.csproj -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "ZegamiViewer.Web.dll"]
