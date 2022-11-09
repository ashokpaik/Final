FROM seleniumpytest
COPY . /Final
WORKDIR /Final
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "--cache-clear", "-v", "--junit-xml=/Final/testreports/result.xml"]
CMD tail -f /dev/null