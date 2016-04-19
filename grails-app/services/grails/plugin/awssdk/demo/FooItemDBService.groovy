package grails.plugin.awssdk.demo

import grails.plugin.awssdk.dynamodb.AbstractDBService

class FooItemDBService extends AbstractDBService<FooItem> {

    FooItemDBService() {
        super(FooItem)
    }

}
