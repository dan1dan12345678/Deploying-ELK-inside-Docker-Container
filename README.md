# Deploying-ELK-inside-Docker-Container
Deploying ELK inside Docker Container with docker compose using previous a cluster deployed with Digital Ocean
File structure 


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


Ensure to include this snippet in your `README.md` file where appropriate.
The use of triple backticks (```) creates a preformatted code block in Markdown, which preserves the structure and spacing of your content.
By starting the block with "```plaintext", it hints to render the block as plain text, keeping your tree structure intact without any Markdown processing.
