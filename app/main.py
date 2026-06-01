from fastapi import FastAPI

app = FastAPI(title="Teste DevOps")


@app.get("/")
def health():
    return {"status": "OK", "message": "Hello World"}

# Testando esteira CI do GitHub Actions