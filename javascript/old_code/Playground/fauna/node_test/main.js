var faunadb = require('faunadb'),
var q = faunadb.query

var db = new faunadb.Client({
    secret: process.env.FAUNA_SECRET,
    domain: 'db.fauna.com',
    // NOTE: Use the correct domain for your database's Region Group.
    port: 443,
    scheme: 'https',
    queryTimeout: 2000,
})


var create = db.query(
    q.Create(
        q.Collection('test'),
        { data: { testField: 'testValue' } }
    )
)

create.then(function (response) {
    console.log(response.ref); // Logs the ref to the console.
})