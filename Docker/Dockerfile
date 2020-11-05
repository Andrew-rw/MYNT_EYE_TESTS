#Download base image ubuntu 16.04
FROM ubuntu:16.04

# Prepare Image
RUN apt-get update && \
    apt-get install -y software-properties-common usbutils && \
    rm -rf /var/lib/apt/lists/*

# Add MYNT repo
RUN add-apt-repository ppa:slightech/mynt-eye-s-sdk

# Update Ubuntu Software repository
RUN apt-get update

# Install software
RUN apt-get install -y mynteye-s-calibrator mynt-eye-s-sdk && \
    rm -rf /var/lib/apt/lists/*
    
RUN ln -sf /opt/myntai/mynteye-s-calibrator/mynteye-s-calibrator /usr/local/bin/mynteye-s-calibrator


