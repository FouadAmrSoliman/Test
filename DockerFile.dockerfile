From ubuntu:latest


RUN apt-get update && apt-get install -y python3 python3-pip sudo


RUN useradd -m IVYSchools


RUN chown -R IVYSchools:IVYSchools /home/IVYSchools/


copy --chown=IVYSchools . /home/IVYSchools/HelloWorld


User IVYSchools

Run cd /home/IVYSchools/HelloWorld && pip3 install -r r.txt