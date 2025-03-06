# Git Commands

Delete a branch

```shell
git branch --delete <branchname>
```

Rename files

```shell
git mv old_filename new_filename
```

Go to last commit that git diff is nothing

```shell
git reset --hard HEAD
```

see remote branches

```shell
git branch -r
```

see remote and local branches

```shell
git branch -a
```

switch to remote branch

```shell
git switch -t
```

## Tagging

git tag -a v1.0 -m "Version 1.0"

git push origin v1.0
