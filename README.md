# Overcrack Kickstarter

WARNING: Only use this for the pristine Overcrack installation. Before running the kickstart script (`kickstart.sh`) make sure the `DocumentRoot` of the Apache web server is set to `www` folder in the Overcrack directory.

1. Move/copy the `example-posts` folder, `kickstart.sh` and `remove-example-posts.sh` to Overcrack folder:

````
  [OVERCRACK-FOLDER]
    api-www
    engine
    example-posts
    example-templates
    www
    ...
    kickstart.sh
    remove-example-posts.sh
    ...
````

2. Run the kickstart script:

````
  
Kickstart Overcrack blog with example posts.
