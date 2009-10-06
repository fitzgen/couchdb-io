doRelativeFile("./json.io")

CouchDb := Object clone do(
    getDb := method(name,
        CouchDatabase with(self url .. name .. "/")
    )

    url ::= ""

    with := method(serverUrl,
        self clone setUrl(serverUrl)
    )
)

CouchDatabase := Object clone do(
    at := method(id,
        URL with(self url .. id) fetch parseJson
    )

    url ::= ""

    with := method(dbUrl,
        self clone setUrl(dbUrl)
    )
)
