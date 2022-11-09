FROM seleniumpytest
COPY . /Final
WORKDIR /Final
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junit-xml=report.xml"]
CMD tail -f /dev/null