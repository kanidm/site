

# Testing locally

I'm doing this in docker since macOS' Ruby is weird and broken.

Grab the image:
```
docker pull machines/jekyll
```

Update the gemfile:

```
docker run --rm \
  --mount type=bind,source="$PWD",target=/srv/jekyll \
  --publish 4000:4000 \
  jekyll/jekyll \
  bundle update
```

Run it in "serve" mode:

```
docker run --rm \
  --mount type=bind,source="$PWD",target=/srv/jekyll \
  --publish 4000:4000 \
  jekyll/jekyll \
  jekyll serve
```

This'll expose it on <http://localhost:4000>, open the link and you should see the site.
