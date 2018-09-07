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
   
2. From inside the Overcrack folder, run the kickstart script:

````
./kickstart.sh
````

3. Open `config.php` and update the paths and metadata as recommended by the script.
   
4. Create `crontab` using statement provided by the script.

5. Pray for a minute before checking your blog in browser.

