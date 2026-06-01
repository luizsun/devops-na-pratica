from fastapi import FastAPI

app = FastAPI(title="devops na pratica")


@app.get("/")
def health():
    return {"status": "OK", "message": "Hello World"}

# Testando esteira CI do GitHub Actions