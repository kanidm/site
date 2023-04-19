---
layout: post
title: Blog
permalink: /blog/
---

{% for post in site.posts %}

## [{{ post.title }}]({{ post.url }})

{{post.excerpt}}

Posted on {{post.date| date_to_string}} by {{post.author}}\
{% endfor %}
