#!/bin/sh

# see https://gohugo.io/hosting-and-deployment/hosting-on-github/
# for related configuration of "public" directory
# as a git worktree (under site) that is connected to
# the gh-pages branch (and tracks the origin/gh-pages branch)

hugo
cd public && git add --all && git commit -m "Publishing to gh-pages" && cd ..

echo "If they look good then run: "
echo "  git push <remote name here> gh-pages"
