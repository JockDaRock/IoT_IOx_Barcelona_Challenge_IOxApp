FROM python:alpine

RUN pip install requests

COPY clapper.py .

LABEL "cisco.cpuarch"="x86_64" \
      "cisco.resources.profile"="custom" \
      "cisco.resources.cpu"="50" \
      "cisco.resources.memory"="50" \
      #cisco.resources.disk=50 \
      "cisco.resources.network.0.interface-name"="eth0"
      #"cisco.resources.network.0.network-name"="iox-bridge0"
      #"cisco.resources.network.0.ports.tcp"="{3000:3000}"

CMD ["python", "clapper.py"]