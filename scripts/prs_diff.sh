#!/bin/bash

PR_MERGE_MATCH='Merge pull request'
FROM_BRANCH="master"
TO_BRANCH="production"
GITHUB_URL="https://github.com/$(git config --get remote.origin.url | cut -d: -f2 | cut -d. -f1)"

checkout() { echo "Checkout $1..." && git checkout $1; }
pull() { echo "Pulling latest $1" && git pull origin $1; }
checkout_and_pull() { checkout $1 && pull $1; }
output_new_prs() {
    echo '---------------------------------------------------------------'
    git log |
        sed "/$1/q" |
        grep "$PR_MERGE_MATCH" |
        cut -d# -f2 |
        cut -d" " -f1 |
        while read PR
        do
            echo "$GITHUB_URL/pull/$PR/ | $(hub pr show -f "%t | Merged: %mr" $PR)"
        done; 
    echo '---------------------------------------------------------------'
}

# Steps:
# 1. Pull latest $TO_BRANCH and get latest commit hash
# 2. Pull latest $FROM_BRANCH
# 3. Get all commits from "git log" of $FROM branch newer than last commit in $TO_BRANCH and run the PRs regex over it
checkout_and_pull $TO_BRANCH && \
    LATEST_HASH=$(git rev-parse HEAD) && \
    checkout_and_pull $FROM_BRANCH && \
    output_new_prs $LATEST_HASH
