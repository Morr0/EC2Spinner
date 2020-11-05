aws ec2 run-instances \
--instance-type "t2.micro" \
--image-id "ami-0ae99b503e8694028" \
--key-name "TestSpin" \
--instance-initiated-shutdown-behavior "terminate" \
--tag-specifications "ResourceType=instance, Tags=[{Key=Name, Value=Test}
                                                ,{Key=Test, Value=Test}]" \
--user-data "
    #!/bin/bash
    yum install -y git
    yum install -y docker
    service docker start
    sleep 31m; sudo shutdown -h now
"