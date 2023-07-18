<!DOCTYPE html>
<!-- ABUILD_RELEASER_ACTION_INDEX_TEMPLATE -->
<html lang="en">
  <head>
    <title>{{ .title }}</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@ajusa/lit@latest/dist/lit.css" />
  </head>
  <body class="c">
    <h1>Index {{ with .dir }}of {{ . | trimPrefix "./" }}{{ end }}</h1>
    <hr />
    <ul>
      {{- if .add_top_level }}
      <li><a href="..">..</a></li>
      {{- end }}
      {{- range (sortAlpha .files) }}
      <li><a href="{{ . | trimPrefix "./" }}">{{ . | trimPrefix "./" }}</a></li>
      {{- end }}
    </ul>
    <hr />
  </body>
</html>
