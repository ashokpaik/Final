FROM selenium/standalone-chrome
RUN apt-get update && apt-get install -y python3.10 python3.10-dev
COPY . /Interview9
WORKDIR /Interview9
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=testreports/report.xml"]
CMD tail -f /dev/null