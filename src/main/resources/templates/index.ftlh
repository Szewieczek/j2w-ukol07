[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Můj blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <style>
        body {
            background-color: #f8f9fa; /* Světle šedé pozadí */
        }

        .blog-post {
            background-color: #fff; /* Bílé pozadí příspěvku */
            padding: 25px;
            border-radius: 8px; /* Zaoblené rohy */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Jemný stín */
            margin-bottom: 20px; /* Přidáno pro mezeru mezi příspěvky */
        }

        h1 { /* Styl pro hlavní nadpis */
            color: #007bff; /* Modrá barva */
        }

        h2 {
            color: #007bff; /* Modrá barva titulku */
        }

        .article-meta {
            font-size: 0.9rem;
            color: #6c757d; /* Šedá barva metadat */
        }

        .read-more-link { /* Přidán styl pro odkaz "číst dále" */
            display: inline-block;
            margin-top: 10px;
            color: #007bff; /* Modrá barva odkazu */
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h1>Blog o testování SW</h1>
    [#list posts.content]
        [#items as post]
            <article class="blog-post">
                <h2>${post.title}</h2>
                <p class="article-meta">Publikováno ${post.published?date?string("d. MMMM yyyy")} od ${post.author}</p>
                <p>${post.perex?no_esc}</p>
                <a href="/${post.slug}" class="read-more-link">Přečíst</a>
            </article>
        [/#items]
    [#else]
        <p>Žádné příspěvky</p>
    [/#list]
</div>
</body>
</html>