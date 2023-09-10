# using Ubuntu latest version
FROM ubuntu:latest

# Updating Ubuntu package manager to the latest version & Installing Python. The -y flag is used to automatically answer "yes" to any prompts while installing.
RUN apt-get update && apt-get install -y python3 python3-pip sudo

# Adding a new user named "Fouad Soliman" and creating home directory 
RUN useradd -m "Fouad Soliman"

# Change the ownership of the home directory to the new user
RUN chown -R "Fouad Soliman":"Fouad Soliman" /home/"Fouad Soliman"/

# Copy the current directory's contents (Where the sockerfile is saved) to the new user's home directory (in Ubuntu)
COPY --chown="Fouad Soliman" . /home/"Fouad Soliman"/

# Switch to the new user
USER "Fouad Soliman"

# Change the working directory to the user's home directory and install Python packages from req.txt
WORKDIR /home/"Fouad Soliman"/
RUN pip3 install --no-cache-dir --upgrade -r requirements.txt