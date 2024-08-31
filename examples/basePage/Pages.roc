## Generated by RTL https://github.com/isaacvando/rtl
module [
    first,
    base,
    second,
]

first = \model ->
    """
    <p>This is the innner content of the page for <em>first</em>. Here's a value: $(model.foo |> escapeHtml) </p>
    <a href="/second">second</a>

    """

base = \model ->
    """
    <!DOCTYPE html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shared Base Page</title>
    </head>
    <body>
        <h1>We want to reuse the outer parts of this page on every page of the website.</h1>
        $(model.content)

        <footer>2024 RTL</footer>
    </body>
    </html>

    """

second = \model ->
    """
    <p>This is a different inner content! Here's another value: $(Num.toStr model.bar |> escapeHtml)</p>
    <a href="/first">first</a>
    """

escapeHtml : Str -> Str
escapeHtml = \input ->
    input
    |> Str.replaceEach "&" "&amp;"
    |> Str.replaceEach "<" "&lt;"
    |> Str.replaceEach ">" "&gt;"
    |> Str.replaceEach "\"" "&quot;"
    |> Str.replaceEach "'" "&#39;"
