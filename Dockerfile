#FROM python
#COPY . /usr/app/
#EXPOSE 5000
#WORKDIR /usr/app/
#RUN pip install -r requirements.txt
#CMD python form_enduser.py


FROM python
WORKDIR /project02
COPY requirements.txt /project02
EXPOSE 5000
RUN --mount=type=cache,target=/root/.cache/pip \
    pip3 install -r requirements.txt
COPY . /project02
ENTRYPOINT ["python3"]
CMD ["end_user.py"]