---
layout: page
---

<div width='100px' height='100px'>
<img src="/assets/images/logo.svg" style="float:right" width='50%'/>
</div>


Kanidm is an identity management platform written in rust. 

Our goals are:

* Be a modern identity management platform
* Simple to deploy and integrate
* Extensible for various needs
* Correct and secure behaviour by default

Today the project is still under [heavy development](https://github.com/kanidm/kanidm) to achieve these goals - We have many foundational parts in place, and many of the required security features, but it is still an Alpha, and should be
treated as such.

<div>
<h3>Latest Posts</h3>
<ul>
{% for post in site.posts %}
<li><a href="{{ post.url }}">{{ post.title }}</a> ({{post.date| date_to_string}})<!-- by {{post.author}} -->
</li>
{% endfor %}
</ul>
</div>