package grails.plugin.awssdk.demo

import com.amazonaws.services.kinesis.model.Shard
import grails.plugin.awssdk.kinesis.AmazonKinesisService

class KinesisController {

    AmazonKinesisService amazonKinesisService
    
    def create() {}

    def createRecord(String id) {}

    def delete(String id) {
        amazonKinesisService.deleteStream(id)
        flash.message = message(code: 'default.deleted.message', args: ['Stream', id])
        redirect action: 'index'
    }

    def index() {
        [streamNames: amazonKinesisService.listStreamNames()]
    }

    def save() {
        amazonKinesisService.createStream(params.streamName)
        flash.message = message(code: 'default.created.message', args: ['Stream', params.streamName])
        redirect action: 'show', id: params.streamName
    }

    def listRecords(String id) {
        Shard shard = amazonKinesisService.listShards(id).first() // Get default fist shard (demo will only work with a single shard)
        [records: amazonKinesisService.listShardRecordsFromHorizon(id, shard)]
    }

    def send(String id) {
        String sequenceNumber = amazonKinesisService.putRecord(id, 'some-partition-key', params.data, '')
        flash.message = message(code: 'default.created.message', args: ['Record', sequenceNumber])
        redirect action: 'show', id: id
    }

    def show(String id) {
        log.debug "show..."
        def d = amazonKinesisService.describeStream(id).streamDescription
        [streamDescription: amazonKinesisService.describeStream(id).streamDescription]
    }
    
}
