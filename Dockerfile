FROM ashokpaik/seleniumpytest
COPY . /Final
WORKDIR /Final
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "--cache-clear", "--html=report.html", "-v", "--junit-xml=result.xml"]
CMD tail -f /dev/null