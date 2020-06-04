FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
FROM python:3.7-slim

COPY / /
RUN pip install -r requirements.txt