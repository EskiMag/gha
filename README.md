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