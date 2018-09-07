#!/bin/bash

if ["$1" == ""] ; then
	echo ""
	echo "Usage: delete-samples.sh SOURCE_PATH"
	echo "  where SOURCE_PATH is the folder containing /posts, /templates, ..."
	echo ""
	exit 1
fi

SOURCE_PATH="$1"
echo "Removing example posts";
rm "${SOURCE_PATH}/posts/2016/11/20161112-01-blogging-is-dead.md";
echo "Removed: ${SOURCE_PATH}/posts/2016/11/20161112-01-blogging-is-dead.md";
rm "${SOURCE_PATH}/posts/2016/11/20161112-02-design-for-the-present.md";
echo "Removed: ${SOURCE_PATH}/posts/2016/11/20161112-02-design-for-the-present.md";
rm "${SOURCE_PATH}/posts/2016/11/20161112-03-world-without-mac-pro.md";
echo "Removed: ${SOURCE_PATH}/posts/2016/11/20161112-03-world-without-mac-pro.md";
rm "${SOURCE_PATH}/posts/2016/11/20161112-04-letter-to-young-people.md";
echo "Removed: ${SOURCE_PATH}/posts/2016/11/20161112-04-letter-to-young-people.md";
rm "${SOURCE_PATH}/posts/2016/12/20161215-01-page-article-linked-post.md";
echo "Removed: ${SOURCE_PATH}/posts/2016/12/20161215-01-page-article-linked-post.md";
rm "${SOURCE_PATH}/posts/2016/12/20161215-02-apple-removes-battery-time-remaining.md";
echo "Removed: ${SOURCE_PATH}/posts/2016/12/20161215-02-apple-removes-battery-time-remaining.md";
rm "${SOURCE_PATH}/posts/2017/01/20170112-01-iphone-spam-call-blocker.md";
echo "Removed: ${SOURCE_PATH}/posts/2017/01/20170112-01-iphone-spam-call-blocker.md";
rm "${SOURCE_PATH}/posts/2017/01/20170112-02-ten-years-of-iphone.md";
echo "Removed: ${SOURCE_PATH}/posts/2017/01/20170112-02-ten-years-of-iphone.md";
rm "${SOURCE_PATH}/posts/2017/01/20170112-03-mengenal-markdown-1.md";
echo "Removed: ${SOURCE_PATH}/posts/2017/01/20170112-03-mengenal-markdown-1.md";
rm "${SOURCE_PATH}/posts/2017/01/20170112-04-cr-mbp-battery-update.md";
echo "Removed: ${SOURCE_PATH}/posts/2017/01/20170112-04-cr-mbp-battery-update.md";
rm "${SOURCE_PATH}/posts/2017/01/20170131-01-two-states-of-apple.md";
echo "Removed: ${SOURCE_PATH}/posts/2017/01/20170131-01-two-states-of-apple.md";
rm "${SOURCE_PATH}/posts/2017/01/20170131-02-the-wrong-future.md";
echo "Removed: ${SOURCE_PATH}/posts/2017/01/20170131-02-the-wrong-future.md";
rm "${SOURCE_PATH}/posts/2017/01/20170131-03-mengenal-markdown-2.md";
echo "Removed: ${SOURCE_PATH}/posts/2017/01/20170131-03-mengenal-markdown-2.md";
rm "${SOURCE_PATH}/posts/2017/05/20170516-01-db-backup-testing.md";
echo "Removed: ${SOURCE_PATH}/posts/2017/05/20170516-01-db-backup-testing.md";
rm "${SOURCE_PATH}/posts/2017/05/20170516-02-overcast3.md";
echo "Removed: ${SOURCE_PATH}/posts/2017/05/20170516-02-overcast3.md";
rm "${SOURCE_PATH}/posts/2017/05/20170516-03-mac-pro-audacity-of-yes.md";
echo "Removed: ${SOURCE_PATH}/posts/2017/05/20170516-03-mac-pro-audacity-of-yes.md";
rm "${SOURCE_PATH}/posts/2017/05/20170516-04-mp3-isnt-dead.md";
echo "Removed: ${SOURCE_PATH}/posts/2017/05/20170516-04-mp3-isnt-dead.md";
rm "${SOURCE_PATH}/posts/2017/08/20170810-01-overcrack-markdown.md";
echo "Removed: ${SOURCE_PATH}/posts/2017/08/20170810-01-overcrack-markdown.md";
rm "${SOURCE_PATH}/posts/2017/08/20170817-01-overcrack-bookmarklet.md";
echo "Removed: ${SOURCE_PATH}/posts/2017/08/20170817-01-overcrack-bookmarklet.md";
rm "${SOURCE_PATH}/posts/2017/08/20170822-01-removed-send-to-watch.md";
echo "Removed: ${SOURCE_PATH}/posts/2017/08/20170822-01-removed-send-to-watch.md";
rm "${SOURCE_PATH}/posts/2017/08/20170822-02-courage.md";
echo "Removed: ${SOURCE_PATH}/posts/2017/08/20170822-02-courage.md";
rm "${SOURCE_PATH}/posts/2017/08/20170822-03-overcast-ios11-soon.md";
echo "Removed: ${SOURCE_PATH}/posts/2017/08/20170822-03-overcast-ios11-soon.md";
rm "${SOURCE_PATH}/posts/2017/08/20170822-04-show-markdown-source.md";
echo "Removed: ${SOURCE_PATH}/posts/2017/08/20170822-04-show-markdown-source.md";
echo "DONE.";
echo "";
echo "WARNING: Items in the media folder are not removed.";
echo "";