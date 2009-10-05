CouchDb := Object clone do(
    url ::= ""

    getDb := method(name,
        CouchDatabase with(self url .. name .. "/")
    )

    with := method(serverUrl,
        self clone setUrl(serverUrl)
    )
)

CouchDatabase := Object clone do(
    url ::= ""

    with := method(dbUrl,
        self clone setUrl(dbUrl)
    )

    squareBrackets := method(id,
        URL with(self url .. id) fetch
    )
)
