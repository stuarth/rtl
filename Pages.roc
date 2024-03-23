interface Pages
    exposes [page]
    imports []

page = \model ->
    [
    """
    <!DOCTYPE html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Roc Template Example</title>
        <link rel="icon" href="/favicon.svg">
    </head>
    <body>
        <div>
            $(model.name)
            
    """,
    
    
        if Bool.true then
            ""
        else
            "",
    
    
    """
    
        </div>
    </body>
    </html>
    
    """
    ] |> Str.joinWith ""
    