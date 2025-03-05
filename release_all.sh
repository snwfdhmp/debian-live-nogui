RELEASE_TAG=$(date -u +'%Y-%m-%d')-$(git rev-parse HEAD | cut -c1-8)

# if git is dirty, refuse
if [ -n "$(git status --porcelain)" ]; then
    echo "Error: Git is dirty"
    exit 1
fi

# if git tag already exists, refuse
if git tag -l "$RELEASE_TAG"; then
    echo "Error: Tag $RELEASE_TAG already exists"
    exit 1
fi

# create the tag
git tag "$RELEASE_TAG"

# push the tag
git push origin "$RELEASE_TAG"

# create the release using dist_all/*.iso and dist_all/build.log as changelog
gh release create "$RELEASE_TAG" -t "Debian Live NoGUI $RELEASE_TAG" -F dist_all/build.log dist_all/*.iso
