# Neill Watson, PhD Research Questionnaires

Instructions for running Neill Watson's customized LimeSurvey installation inside a Docker Container on AWS Elastic Beanstalk.

## Install the App on Amazon Elastic Beanstalk with RDS
Follow the steps below to deploy the demo application to an Elastic Beanstalk Docker environment. Accept the default settings unless indicated otherwise in the steps below:

1. Download the ZIP file from the [Releases section](https://github.com/jackwarner/watson-docker/releases) of this repository.
2. Login to the [Elastic Beanstalk Management Console](https://console.aws.amazon.com/elasticbeanstalk)
3. Click `Create New Application` and give your app a name and description
4. Choose 'Docker' in the 'Predefined configuration' dropdown and click `Next`
5. Upload the ZIP file downloaded in Step 1
6. Choose 'Create an RDS DB Instance with this environment' in the 'Additional Resources' step
7. Allocate 5GB of storage and provide a username and password for your database
8. Review and launch the application

## Usage Permissions

Permission to use the questionnaires requires only that you cite the two references below in your publications, presentations, and thesis/dissertation.

Watson, N. (2004). Self-Concept Questionnaire – Personal Constructs, Self-Concept Questionnaire –
              Conventional Constructs, Abstract Measures of Real-Ideal and Real-Ought Discrepancies,
              Importance of Ideal Self and Ought Self, Reference Person(s) for Ought Self. Retrieved
              from http://watsonresearch.wm.edu

Watson, N., Bryan, B. C., & Thrash, T. M. (2010). Self-discrepancy: Comparisons of the
              psychometric properties of three instruments. Psychological Assessment, 22, 878-892.
              doi: 10.1037/a0020644

## Change History

[Change history](http://www.watsonresearchwiki.org/change-history) and [configuration instructions](http://www.watsonresearchwiki.org/configuration) can be found at [http://www.watsonresearchwiki.org](http://www.watsonresearchwiki.org)
