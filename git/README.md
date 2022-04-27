# git memo

### initiliaze
    $ mkdir test
    $ cd test
    $ git init


### add and commit file
    $ git add README.md
    $ git commit -m "first commit"
    $ git push -u origin master 

alternatively, all updated files can be added by:

    $ git commit -am "add all changes"


### check status and commit logs
    $ git status
    $ git log


### remove commit after commit
check commits and copy id which you want to revert

    $ git log

revert commit
    
    $ git revert 4fbda726705abce3cc346e84751cd9db1deec6fa

### create branch
    $ git branch develop


### check branch
    $ git branch
      master
    * develop

### merge branch
checkout to the branch you want to merge; for example merge develop to master

    $ git checkout master
    $ git merge develop

### delete branch
local

    $ git branch --delete foo

remote

    $ git push --delete origin foo

### pull branch from remote
    $ git pull origin REMOTE-BRANCH-NAME:LOCAL-BRANCH-NAME

### add/delete tags
add tag to commit to keep track of specific versions

    $ git tag # check current tags
    $ git tag [tagname] # set tag

update tag to remote

    $ git push origin [tagname]

delete tag

    $ git tag -d [tagname]

update deleted tag to remote

    $ git push origin :[tagname]

### check branch difference
diff between local branches

    $ git diff master develop
    $ git diff master:README.md develop:README.md # compare specific files

diff between remote and local branch

    $ git diff origin/master master

### change remote url

    $ git remote set_url origin [new url]

### update fork/cloned repository with the original repo
Suppose you have forked `git@github.com:/foo/original.git` and you want to update repository so that all changes in the original repo is same as your forked repo.
https://qiita.com/xtetsuji/items/555a1ef19ed21ee42873  

clone your fork/clone repo if the repo is not present

    $ git clone git@github.com:youraccount/original.git

check branch

    $ git branch -a
    * master
    remotes/origin/HEAD -> origin/master
    remotes/origin/master

add original repository as `upstream` to your remote repository

    $ git remote add upstream git@github.com:foo/original.git

check branch (if remotes/upstream does not appear, try `git fetch upstream` and retry)

    $ git branch -a
    * master
    remotes/origin/HEAD -> origin/master
    remotes/origin/master
    remotes/upstream/master

extract changes from original repository using fetch

    $ git fetch upstream
    remote: Counting objects: 1, done.
    remote: Total 1 (delta 0), reused 1 (delta 0)
    Unpacking objects: 100% (1/1), done.
    From git://github.com/foo/original
    * [new branch]      develop    -> upstream/develop
    * [new branch]      master     -> upstream/master

checkout to master branch and merge upstream/master to master

    $ git checkout master
    $ git merge upstream/master

finally, push your local repo to remote

    $ git push