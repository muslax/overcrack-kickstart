#!/bin/bash
echo "";
echo "     Preparing Overcrack...";

# Prepare blog source folders
if [ -d "blog" ]; then
	echo "     Found blog folder";
else
	mkdir ./blog
	echo "     Created blog folder";
fi
mkdir ./blog/drafts ./blog/media ./blog/hooks ./blog/pages ./blog/posts ./blog/templates;

# Copy show-markdown.sh
cp ./engine/show-markdown.php ./www/;

# Prepare template files
cp ./example-templates/rss.php ./blog/templates/;
cp ./example-templates/overcrack.php ./blog/templates/;
cp ./example-templates/overcrack-white.svg ./blog/media/;
cp ./example-templates/main.css www/;

# Create symlink for blog/media in www root
HERE=$(pwd);
ln -s "$HERE/blog/media" "$HERE/www/media";
    
# Copy demo posts
cp ./example-posts/*.md ./blog/drafts/
cp -r ./example-posts/media/2017 ./blog/media/


# Create startup script start.sh

# Prepare config
cp ./config.php.example ./config.php;
echo "     Copied config.php.example to config.php";
echo "";
echo "     Three steps more...";
echo "     ===================";
echo "";
echo "     1) Edit config.php, FIX the paths:";
echo "     =================================";
echo "     Updater::\$source_path   = '$HERE/blog';";
echo "     Template::\$template_dir = '$HERE/blog/templates';";
echo "     Updater::\$dest_path     = '$HERE/www';";
echo "     Updater::\$cache_path    = '$HERE/cache';";
echo "";
echo "     2) And also CHANGE blog metadata:";
echo "     =================================";
echo "     Post::\$blog_title = 'My Blog';";
echo "     Post::\$blog_url   = 'http://www.mydomain.com/';";
echo "     Post::\$blog_description = 'I\'m a blogger.';";
echo "";
echo "     3) Add/create crontab to automate the updater:";
echo "     =============================================";

echo "     Edit crontab (crontab -e) and add this line:";
echo "     * * * * * $HERE/engine/update.sh $HERE/blog $HERE";
echo "";
echo "     DONE.";
echo "     Wait ONE minute before checking the blog in your browser.";
echo "";
echo "";
