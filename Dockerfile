FROM node:20

# aws CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

# amplify CLI
RUN npm install -g @aws-amplify/cli

WORKDIR /app
