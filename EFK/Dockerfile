FROM python:3.9-slim

WORKDIR /app

COPY apply_ilm_policy.py .

RUN pip install requests

CMD ["sh", "-c", "sleep 30 && python apply_ilm_policy.py"]