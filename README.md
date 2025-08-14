# 🚀 Coming Soon

A simple **Coming Soon** page you can run in Docker with customizable tool name, deadline, and logo.

---

## 📦 Pull the Image

```bash
docker pull ghcr.io/mb-wali/coming-soon:main
```

## ▶️ Run the Container
```
docker run --name testing101 -d \
    -e TOOL_NAME="My New Tool" \
    -e DEADLINE="June 30, 2025" \
    -e LOGO_NAME="logo.svg" \
    -p 8080:8080 ghcr.io/mb-wali/coming-soon:main
```

Once running, open your browser and visit:

[http://127.0.0.1:8080](http://127.0.0.1:8080)

## ⚙️ Environment Variables

The container accepts the following environment variables:

| Variable         | Description                                                                                     | Example Value   |
|------------------|-------------------------------------------------------------------------------------------------|-----------------|
| `TOOL_NAME`      | Name of the tool to display.                                                                    | `My Tool`       |
| `DEADLINE`       | Launch deadline date (format: `"Month DD, YYYY"`).                                              | `June 30, 2025` |
| `LOGO_NAME`      | Filename of the logo to display in the top-right corner.                                        | `logo.svg`      |
| `EXTERN_DOMAIN`  | `true` or `false` — if `true`, shows a footer with **hosted by** information.                   | `true`          |

### 🖼 Available Logos

| Logo Name        | Description         |
|------------------|---------------------|
| `logo.svg`       | Default logo        |
| `MUG.svg`        | MedUni Graz logo    |
| `TU_Graz.png`    | TU Graz logo        |
| `vedmeduni.png`  | VedMedUni logo      |
| `JKU.png`        | JKU logo            |
