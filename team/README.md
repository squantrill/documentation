# Kimai Team Documentation

This part of the documentation is related to the Kimai development team, you can safely skip this part 
if you are a end-user of the Kimai time-tracking application.

## Creating a new release

For creating a new release, you need to have ant installed

- Change the version number in build.xml, commit and push it to master
- Change the version number and status in core/includes/version.php and push it to master
- Switch to your bash (this script is for unix based systems)

```
cd /tmp/
git clone https://github.com/kimai/kimai.git kimai-master
cd kimai-master
git tag -a -f -m 'Tagged version x.x.x' x.x.x
git push origin x.x.x
ant release
```

- Now open GitHub, [create a new "Release"](https://github.com/kimai/kimai/releases) as Draft and upload the release ZIP from /tmp/kimai/kimai_xxx.zip to this draft
- Add one or two sentences and a link to this versions milestone with the "closed" filter
- Publish the release draft
- Publish a new blog post regarding this new release (see below)
- Update https://github.com/kimai/kimai/blob/master/kimai.json and change the version number and news link, commit and push it to master (so the update check in Kimai administration will catch it as well)
- Edit the GitHub release and add a link to the blog post
- Let the rest of the team know and spread the word (Twitter, Facebook ...)

## How to publish a new blog article on the Kimai website

Writing a new blog post is a simple as creating a new .md file in our [website repo](https://github.com/kimai/kimai.github.io) and pushing it to its gh-pages branch
