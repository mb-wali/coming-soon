# coming soon
A sample coming-soon page.

# Pull image
```docker pull ghcr.io/mb-wali/coming-soon:main```

# Run

```bash
docker run --name testing101 -d \
    -e TOOL_NAME="MY New Tool" \
    -e DEADLINE="June 30, 2025" \
    -p 8080:8080 ghcr.io/mb-wali/coming-soon:main  
```

Once running, visit http://127.0.0.1:8080 in your browser.

# Environment
coming-soon provides the following environment variables

* **TOOL_NAME**  -  Name of the Tool e.g.(MY Tool)
* **DEADLINE** - Date for the deadline *format: "Month DD, YYYY"* - e.g. (June 30, 2023)
