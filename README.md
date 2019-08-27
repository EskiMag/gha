# I am trying to setup these workflows:

### review_start

This should run when a new branch is created.

### review_update

This should run when new commit on a branch different to **`master`** is pushed.

### review_stop

This should run when a branch different to **`master`** is deleted.

### deploy_staging

This should run when a new commit to **`master`** branch is pushed.

### deploy_production

This should run when new tag is created.

# Problems

* __review_start__ is running when new tag is created
* __review_update__ is running when new tag is created

# Desired behavior

Workflows should run only in a case specified above and not in other cases.

# Notes

Both **`review_start`** and **`review_update`** workflows went through various versions of the `trigger` statement. It's just one of versions I tried.

# Test

```shell
BRANCH_NAME=new-branch-$(date +%Y%m%d%H%M%S)
git checkout -b $BRANCH_NAME
echo "hello world" >> README.md
git commit -a -m "commit to a feature branch"
git push
git checkout master
git merge $BRANCH_NAME
git branch -D $BRANCH_NAME
git push origin --delete feature/login
git tag -a tag-$(date +%Y%m%d%H%M%S) -m ""
git push --tags
```hello world
