---
layout: default
---

# Debug Information

Number of posts: {% raw %}{{ site.posts.size }}{% endraw %}

{% raw %}{% if site.posts.size > 0 %}
  Posts are available.
{% else %}
  No posts found.
{% endif %}{% endraw %}

# Posts

<ul>
{% raw %}{% for post in site.posts %}
  <li>
    <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
    <br>
    <small>{{ post.date | date: "%B %d, %Y" }}</small>
  </li>
{% endfor %}{% endraw %}
</ul>

# Welcome to Richard Djarbeng's personal website

[Your existing content here]