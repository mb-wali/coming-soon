# coming soon
A sample coming-soon page.

# Pull image
```docker pull mbwali/coming-soon```

# Build image 
```docker build -t coming-soon:latest .```

# Run

```bash
docker run -d -e TOOL_NAME="MY New Tool" -p 8080:8080 coming-soon:latest  
```

Once running, visit http://127.0.0.1:8080 in your browser.

# Environments
- TOOL_NAME : name of the tool that is coming-soon
