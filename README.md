Grails AWS SDK - Demo
==========================

Demo app for [Grails AWS SDK plugin](https://github.com/agorapulse/grails-aws-sdk).

## Getting started

**1- Download or clone the [plugin GitHub project](https://github.com/agorapulse/grails-aws-sdk-demo).**

```groovy
git clone https://agorapulse@github.com/agorapulse/grails-aws-sdk-demo.git
```

**2- Add your AWS app parameters to _grails-app/conf/Config.groovy_.**

```groovy
grails {
    plugin {
        awssdk {
            accessKey = {YOUR_ACCESS_KEY}    // Default access key
            secretKey = {YOUR_SECRET_KEY}    // Default secret key
            region = 'eu-west-1'        // Default region
        }
    }
}
```

**4-Run the app from the project root.** 

```groovy
grails run-app
```

Browse to :

* <http://localhost:8080/aws-sdk-demo/>

Right now there is only a basic S3 controller that list your S3 buckets.
You can also access the console to test the plugin with your config.

Feel free to contribute !