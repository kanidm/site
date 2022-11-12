---
layout: post
title: Blog
permalink: /blog/
---
{% for post in site.posts %}
<div>
    <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
    <div>
    {{post.excerpt}}
    </div>
    <div>Posted on {{post.date| date_to_string}} by {{post.author}}
</div>
{% endfor %}