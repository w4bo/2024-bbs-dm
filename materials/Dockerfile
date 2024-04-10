FROM python:3.10-bullseye
RUN mkdir /notebooks
COPY requirements.txt /notebooks
WORKDIR /notebooks
RUN pip3 install -r requirements.txt
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]