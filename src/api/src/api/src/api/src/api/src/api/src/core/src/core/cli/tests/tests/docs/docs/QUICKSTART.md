# FILE: docs/QUICKSTART.md
1. Clone repo:  
   `git clone https://github.com/Lamont-Labs/BrightLine.git`
2. Install deps:  
   `pip install -r requirements.txt`
3. Run API server:  
   `make demo`
4. Try a request:  
   ```bash
curl -X POST -F "text=Test text here" http://127.0.0.1:8080/submit/text
