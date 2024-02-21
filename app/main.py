from fastapi import FastAPI

app = FastAPI()

@app.get("/auth/main")
def main():
    return {"message": "Response From AuthService"}