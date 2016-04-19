package grails.plugin.awssdk.demo

import grails.plugin.awssdk.ses.AmazonSESService

class SesController {

    static defaultAction = 'create'

    AmazonSESService amazonSESService

    def create() {}

    def send() {
        int statusId = amazonSESService.send(
                params.destinationEmail,
                params.subject,
                params.htmlBody,
        )
        if (statusId == amazonSESService.STATUS_DELIVERED) {
            flash.message = message(code: 'default.sent.message', args: ['Mail'])
        } else {
            flash.message = message(code: 'default.not.sent.message', args: ['Mail'])
        }
        redirect action: 'create'
    }

}
