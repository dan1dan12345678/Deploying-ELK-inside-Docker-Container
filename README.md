# Deploying-ELK-inside-Docker-Container
Deploying ELK inside Docker Container with docker compose using previous a cluster deployed with Digital Ocean

File structure is achieved by 

 . setup-elk-config.sh 
 
After execution will look like below

```plaintext
File structure 

.
├── README.md
├── docker-compose.yml
├── elasticsearch.yml
├── elk-config
│   ├── elasticsearch
│   │   └── elasticsearch.yml
│   ├── kibana
│   │   └── kibana.yml
│   └── logstash
│       ├── logstash.conf
│       └── logstash.yml
├── kibana.yml
├── logstash.conf
└── logstash.yml

```
Now docker compose up can be deployed

 docker compose up 
 
 docker compose stop 
 
 docker composer rm
 
 docker compose restart
 
Check on webpage at:

http://164.90.236.85:5601/

``` plaintext
Ensure to include this snippet in your `README.md` file where appropriate.
The use of triple backticks (```) creates a preformatted code block in Markdown, which preserves the structure and spacing of your content.
By starting the block with "```plaintext", it hints to render the block as plain text, keeping your tree structure intact without any Markdown processing.
