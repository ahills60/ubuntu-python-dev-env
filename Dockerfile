# Useful Anaconda Python Environments in Ubuntu
#
# Andrew Hills (a.hills@sheffield.ac.uk)

FROM andrewhills/ubuntu-python-dev:latest

WORKDIR /tmp/

RUN git clone https://github.com/ahills60/anaconda-environments.git envs

# Iterate through the contents of the envs/ directory
RUN bash -c "for f in envs/*.yml; do echo \"Processing \$f...\"; conda env create --quiet --file \$f; done"

RUN conda init

CMD ["/bin/bash"]
