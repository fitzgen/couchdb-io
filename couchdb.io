doRelativeFile("./json.io")

CouchDb := Object clone do(
    getDb := method(name,
        CouchDbDatabase with(self url .. name .. "/")
    )

    url ::= ""

    with := method(serverUrl,
        self clone setUrl(serverUrl)
    )
)

CouchDbDatabase := Object clone do(
    at := method(id,
        URL with(self url .. id) fetch parseJson
    )

    url ::= ""

    with := method(dbUrl,
        self clone setUrl(dbUrl)
    )
)
