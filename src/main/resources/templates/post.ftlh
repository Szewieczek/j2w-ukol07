[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Můj blog - ${post.title}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">
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
        }

        h2 {
            color: #007bff; /* Modrá barva titulku */
        }

        .article-meta {
            font-size: 0.9rem;
            color: #6c757d; /* Šedá barva metadat */
        }

        .read-more-link {
            display: inline-block;
            margin-top: 10px;
            color: #007bff; /* Modrá barva odkazu */
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <article class="blog-post">
        <h2 class="text-primary">${post.title}</h2>
        <p class="article-meta">Publikováno ${post.published?date?string("d. MMMM yyyy")} od ${post.author}</p>
        <div class="article-body">
            ${post.body?no_esc}
        </div>
        <nav class="mt-3">
            <a class="btn btn-outline-primary" href="/">◂ zpět na seznam</a>
        </nav>
    </article>
</div>
</body>
</html>
