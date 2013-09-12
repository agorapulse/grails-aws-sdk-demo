package aws.sdk.demo

import grails.plugin.awssdk.AmazonWebService

class S3Controller {

    AmazonWebService amazonWebService

    def index() {
        [
                buckets: amazonWebService.s3.listBuckets()
        ]
    }
}
