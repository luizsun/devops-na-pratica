from fastapi import FastAPI

app = FastAPI(title="DevOps Demo API")


@app.get("/")
def health():
    return {"status": "OK", "message": "Hello World"}
