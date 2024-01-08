FROM python:3.10.13-slim AS stage
WORKDIR /app
COPY . .
RUN pip3 install -r requirements.txt

FROM stage
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["app.py"]


