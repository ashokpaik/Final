FROM seleniumpytest
COPY . /Final
WORKDIR /Final
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "--html=/testreports/report.html", "-v", "--junit-xml=report.xml"]
COPY /testrports/report.html ./testreports/
CMD tail -f /dev/null