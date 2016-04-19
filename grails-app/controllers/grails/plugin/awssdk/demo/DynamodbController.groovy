package grails.plugin.awssdk.demo

class DynamodbController {

    FooItemDBService fooItemDBService

    def index() {
        fooItemDBService.query('hashkey').results
    }
}
