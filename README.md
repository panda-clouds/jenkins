# jenkins
This Dockerfile adds the "docker client" into the jenkins/jenkins image.

This can be used to reach docker from a declarative pipeline

Why not use jenkinssci/blueocean?

For some reason jenkinssci/blueocean doesn't allow the use of nodejs.
I assume because it's build on alpine which doesn't support nodejs
