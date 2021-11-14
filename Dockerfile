FROM image:tag

WORKDIR /app
# Clone project
#https://github.com/name/project

ARG name=dvlab-research
ARG project=Simple-SR
ARG branch=master

ADD https://github.com/$name/$project/archive/$branch.tar.gz /app/$project-$branch.tar.gz
RUN tar xvfz ${project}-$branch.tar.gz

WORKDIR /app/$project-$branch

# Add files
ADD ./files .

# Install project dependencies

#RUN pip install -r requirements.txt

# TODO override ENTRYPOINT or CMD


