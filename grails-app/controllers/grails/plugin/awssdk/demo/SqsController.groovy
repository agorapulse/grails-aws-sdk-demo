package grails.plugin.awssdk.demo

import grails.plugin.awssdk.sqs.AmazonSQSService

class SqsController {

    AmazonSQSService amazonSQSService

    def create() {}

    def createMessage(String id) {}

    def delete(String id) {
        amazonSQSService.deleteQueue(id)
        flash.message = message(code: 'default.deleted.message', args: ['Queue', id])
        redirect action: 'index'
    }

    def deleteMessage(String id) {
        log.debug "deleteMessage..."
        amazonSQSService.deleteMessage(id, params.receiptHandle)
        flash.message = message(code: 'default.deleted.message', args: ['Message', ''])
        redirect action: 'show', id: id
    }

    def index() {
        [queueNames: amazonSQSService.listQueueNames()]
    }

    def save() {
        amazonSQSService.createQueue(params.queueName)
        flash.message = message(code: 'default.created.message', args: ['Queue', params.queueName])
        redirect action: 'show', id: params.queueName
    }

    def receiveMessages(String id) {
        [messages: amazonSQSService.receiveMessages(id, params.int('maxNumberOfMessages', 1))]
    }

    def send(String id) {
        String messageId = amazonSQSService.sendMessage(id, params.messageBody)
        flash.message = message(code: 'default.created.message', args: ['Message', messageId])
        redirect action: 'show', id: id
    }

    def show(String id) {
        log.debug "show..."
        [queueAttributes: amazonSQSService.getQueueAttributes(id)]
    }

}
