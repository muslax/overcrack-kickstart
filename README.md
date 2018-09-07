# Overcrack Kickstarter

WARNING: Only use this for pristine Overcrack installation. Before running the kickstart script (`kickstart.sh`) make sure the `DocumentRoot` of the Apache web server is set to `www` folder in the Overcrack directory.

The `kickstart.sh` script creates `blog` folder (and its sub folders) and assume it as Overcrack's source folder. If you intend to use different folder name, or folder outside Overcrack directory, you are still able to use this for testing purpose and change the paths configs in `config.php` later.

<br><br><br>

## The steps

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

5. If you wish, pray for a minute before checking your blog in the browser.

## Removing example posts

When you don't need the example posts anymore, use `remove-example-posts.sh` script to clean-up your blog.

````
./remove-example-posts.sh`
````

This script deletes only the posts, but not the pictures in `media` folder.

Happy Overcracking.
