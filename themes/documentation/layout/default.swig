<!DOCTYPE html>
<html>
<head>
  <meta charSet='utf-8' />
  <title>{{config.title + ' - ' + page.title}}</title>
  <link href='https://cdnjs.cloudflare.com/ajax/libs/normalize/4.0.0/normalize.min.css' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,300,700' rel='stylesheet' type='text/css'>
  <link href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet' type='text/css'>  
  <link href='{{ url_for("css/docs.css") }}' rel='stylesheet'>

</head>
<body>
  <div class='menu'>
    <div class='logo'>
      SIMDE
    </div>
   <div id="lang-select-wrap">
      <select class="language" id="lang-select">
        {% for lang in site.data.languages %}
          <option value="{{ loop.key }}"{% if page.lang === loop.key %} selected{% endif %}>{{ loop.key }}</option>
        {% endfor %}
      </select>
    </div>
    <nav class='menu-nav'>
      {% for section in site.data.nav %}
        <ul class='nav'>
        {% if page.lang === 'en' %}
          <span>{{ section.titleEn }}</span>
                          {% endif %}
                {% if page.lang === 'es' %}
                <span>{{ section.titleEs }}</span>
                                {% endif %}
          <ul class='nav'>
            {% for item in section.items %}
              <li>{% if page.lang === 'en' %}
                <a href='{{item.id + ".html" }}'{% if item.id == page.id %} class='active'{% endif %}>{{item.titleEn}}</a>
                {% endif %}
                {% if page.lang === 'es' %}
                <a href='{{item.id + ".html" }}'{% if item.id == page.id %} class='active'{% endif %}>{{item.titleEs}}</a>
                {% endif %}
              </li>
            {% endfor %}
          </ul>
        </ul>
      {% endfor %}
    </nav>
  </div>
  <div class='page'>
    <div class='page-content'>
      <h1>{{page.title}}</h1>
      {{page.content}}
    </div>
  </div>
  <div class='switch-page'>
    {% if page.prev %}
      <a class='previous' href='{{ url_for(page.prev) }}'><i class='fa fa-angle-left fa-3x'></i></a>
    {% endif %}
    {% if page.next %}
      <a class='next' href='{{ url_for(page.next) }}'><i class='fa fa-angle-right fa-3x'></i></a>
    {% endif %}
  </div>
    <script src='{{ url_for("js/lang_select.js")}}'></script>
</body>
</html>
