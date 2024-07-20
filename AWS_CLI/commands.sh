# I use this one as my note.
# SLA
# Create a bucket
aws s3 mb s3://cd2401-8888 --region us-east-1

aws s3 mb s3://cd2401-8888 \
    --region us-east-1

aws s3 cp index.html s3://cd2401-8888/index.html

aws s3 ls s3://cd2401-8888

aws s3 mv index.html s3://cd2401-8888/Test/index.html