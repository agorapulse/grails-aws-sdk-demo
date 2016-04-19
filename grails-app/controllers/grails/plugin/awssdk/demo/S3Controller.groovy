package grails.plugin.awssdk.demo

import grails.plugin.awssdk.s3.AmazonS3Service
import org.springframework.web.multipart.MultipartFile

class S3Controller {

    AmazonS3Service amazonS3Service
    
    def create() {}

    def createFile() {}

    def delete(String id) {
        amazonS3Service.deleteBucket(id)
        flash.message = message(code: 'default.deleted.message', args: ['Bucket', id])
        redirect action: 'index'
    }

    def deleteFile(String id) {
        log.debug "deleteMessage..."
        amazonS3Service.deleteFile(id, params.key)
        flash.message = message(code: 'default.deleted.message', args: ['File', ''])
        redirect action: 'show', id: id
    }

    def index() {
        [bucketNames: amazonS3Service.listBucketNames()]
    }

    def save() {
        amazonS3Service.createBucket(params.bucketName)
        flash.message = message(code: 'default.created.message', args: ['Bucket', params.bucketName])
        redirect action: 'show', id: params.bucketName
    }

    def show(String id) {
        log.debug "show..."
        [objectSummaries: amazonS3Service.listObjects(id, '').objectSummaries]
    }

    def upload(String id) {
        if (!params.file) {
            flash.message = message(code: 'default.not.created.message', args: ['File'])
            redirect action: 'show', id: id
        }
        MultipartFile multipartFile = request.getFile('file')
        if (!multipartFile || multipartFile.empty) {
            flash.message = message(code: 'default.not.created.message', args: ['File'])
        } else {
            String fileUrl = amazonS3Service.storeFile(id, multipartFile.originalFilename, multipartFile.inputStream)
            flash.message = message(code: 'default.created.message', args: ['File', fileUrl])
        }
        redirect action: 'show', id: id
    }

}
