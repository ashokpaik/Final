FROM seleniumpytest
COPY . /Final
WORKDIR /Final
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "--html=report.html", "-v", "--junit-xml=report.xml"]
COPY report.html ./testreports/
CMD tail -f /dev/null