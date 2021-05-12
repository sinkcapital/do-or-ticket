FROM python:3.8

ENV SLACK_BOT_TOKEN <Botのトークン>
RUN mkdir src
copy src src/

RUN pip install -r ./src/requirements.txt

WORKDIR ./src/
ENTRYPOINT [ "python", "app.py" ]