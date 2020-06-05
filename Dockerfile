FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
FROM python:3.7-slim

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY / maskrcnn/
WORKDIR maskrcnn/

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility