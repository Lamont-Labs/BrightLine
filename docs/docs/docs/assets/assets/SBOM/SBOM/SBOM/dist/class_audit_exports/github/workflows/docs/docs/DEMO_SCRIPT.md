# FILE: docs/DEMO_SCRIPT.md
## BrightLine™ Demo Script — v2.0

**Audience:** educators, compliance reviewers, investors  
**Duration:** 5–7 minutes  

### Flow
1. **Start the server:**  
   `make demo` → runs FastAPI app  
2. **Submit text:**  
   ```bash
   curl -X POST -F "text=This is a simple essay text." http://127.0.0.1:8080/submit/text
