
{% set apples = ['Gala', 'Macintosh', 'Golden', 'honeycrisp'] %}

{% for apple in apples %}

  {% if apple != 'Gala' %}

    {{apple}}

  {% else %}

  I hate {{apple}}

  {% endif %}
  
{% endfor %}

