set shell := ["bash", "-uc"]

# release a local-app pair (app1+app2 at version VER)
release-local VER:
    git diff --quiet && git diff --cached --quiet && test -z "$(git status --porcelain)" || (echo "working tree not clean"; exit 1)
    git tag -a "local-v{{VER}}" -m "local apps {{VER}}"
    git push origin "local-v{{VER}}"

# release the global controller at version VER
release-global VER:
    git diff --quiet && git diff --cached --quiet && test -z "$(git status --porcelain)" || (echo "working tree not clean"; exit 1)
    git tag -a "global-v{{VER}}" -m "global-controller {{VER}}"
    git push origin "global-v{{VER}}"

# list released tags
tags:
    git tag --sort=-creatordate | head -20
